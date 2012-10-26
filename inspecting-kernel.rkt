#lang racket/base

(require racket/set)


;; kernel-variable-exports: (listof symbol)
;; Lists the runtime variable exports we inherit from '#%kernel
(provide kernel-variable-exports)




;; How to get the list of symbols out of #%kernel?

;;
;; Unfortunately, it doesn't look like we can do this:
;;
;;   (module->namespace ''#%kernel)
;; 
;; Racket reports that the current code inspector isn't powerful
;; enough to look at '#%kernel's namespace.


;; Ok, alternative plan.  It looks like we can do this:
(define result-from-module->exports
  (let-values ([(variables syntax) (module->exports ''#%kernel)])
    (map car (cdr (assoc 0 variables)))))


;; ... but we can also do this:
(define result-from-module-compiled-exports
  (parameterize ([current-namespace (make-base-namespace)])
    (let-values ([(variables syntax)
                  (module-compiled-exports (compile '(module foo '#%kernel
                                                       (#%provide (all-from '#%kernel)))))])
      (map car (cdr (assoc 0 variables))))))


;; Are they the same?
(unless (equal? (list->set result-from-module->exports)
                (list->set result-from-module-compiled-exports))
  (error 'inspecting-kernel "Inconsistent results from getting exported names of #%kernel"))
              


(define (symbol<? x y)
  (string<? (symbol->string x)
            (symbol->string y)))
  

;; If we get here without error, then they are the same thing.
(define kernel-variable-exports (sort result-from-module-compiled-exports symbol<?))