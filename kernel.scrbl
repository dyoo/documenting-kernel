#lang scribble/manual

@(require (for-syntax racket/base)
          (for-label '#%kernel))

@(define-syntax (racket/tag stx)
   (syntax-case stx ()
     [(_ id category ...)
      ;; For now, ignore the annotated categories
      (syntax/loc stx
        (racket id))]))


@title{Documenting @racketmodname{'#%kernel}}

@author+email["Danny Yoo" "dyoo@hashcollision.org"]

The following is an attempt to systematically categorize the variable bindings
in the @racketmodname['#%kernel] of Racket 5.3.

I pulled out the names with the following snippet:
@racketblock[
(define variable-names
  (let-values ([(variables syntax) (module->exports ''#%kernel)])
    (map car (cdr (assoc 0 variables)))))
]


For the purposes of Whalesong or JavaScript evaluation, I don't think I need paths.



@section{Numerics}
@declare-exporting['#%kernel]

@racket/tag[* numerics]
@racket/tag[+ numerics]
@racket/tag[- numerics]
@racket/tag[/ numerics]
@racket/tag[< numerics]
@racket/tag[<= numerics]
@racket/tag[= numerics]
@racket/tag[> numerics]
@racket/tag[>= numerics]
@racket/tag[abs numerics trigonometry]
@racket/tag[acos numerics trigonometry]
@racket/tag[add1 numerics]
@racket/tag[angle numerics trigonometry]
@racket/tag[arithmetic-shift numerics bit-arithmetic]
@racket/tag[asin numerics trigonometry]
@racket/tag[atan numerics trigonometry]
@racket/tag[bitwise-and numerics bit-arithmetic]
@racket/tag[bitwise-bit-field numerics bit-arithmetic]
@racket/tag[bitwise-bit-set? numerics bit-arithmetic]
@racket/tag[bitwise-ior numerics bit-arithmetic]
@racket/tag[bitwise-not numerics bit-arithmetic]
@racket/tag[bitwise-xor numerics bit-arithmetic]
@racket/tag[ceiling numerics]
@racket/tag[complex? numerics]



@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Lists}
@racket/tag[append lists functions]
@racket/tag[andmap lists functions]
@racket/tag[apply lists procedures]
@racket/tag[assoc lists list-searching]
@racket/tag[assq lists list-searching]
@racket/tag[assv lists list-searching]
@racket/tag[caaaar lists]
@racket/tag[caaadr lists]
@racket/tag[caaar lists]
@racket/tag[caadar lists]
@racket/tag[caaddr lists]
@racket/tag[caadr lists]
@racket/tag[caar lists]
@racket/tag[cadaar lists]
@racket/tag[cadadr lists]
@racket/tag[cadar lists]
@racket/tag[caddar lists]
@racket/tag[cadddr lists]
@racket/tag[caddr lists]
@racket/tag[cadr lists]
@racket/tag[car lists]
@racket/tag[cdaaar lists]
@racket/tag[cdaadr lists]
@racket/tag[cdaar lists]
@racket/tag[cdadar lists]
@racket/tag[cdaddr lists]
@racket/tag[cdadr lists]
@racket/tag[cdar lists]
@racket/tag[cddaar lists]
@racket/tag[cddadr lists]
@racket/tag[cddar lists]
@racket/tag[cdddar lists]
@racket/tag[cddddr lists]
@racket/tag[cdddr lists]
@racket/tag[cddr lists]
@racket/tag[cdr lists]
@racket/tag[cons lists]




@section{Booleans}
@racket/tag[boolean? booleans]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Boxes}
@racket/tag[box boxes]
@racket/tag[box-cas! boxes futures]
@racket/tag[box-immutable boxes immutability]
@racket/tag[box? boxes]


@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Bytes}
@racket/tag[byte? bytes]
@racket/tag[bytes bytes]
@racket/tag[bytes->immutable-bytes bytes]
@racket/tag[bytes->list bytes]
@racket/tag[bytes->path bytes]
@racket/tag[bytes->path-element bytes]
@racket/tag[bytes->string/latin-1 bytes]
@racket/tag[bytes->string/locale bytes]
@racket/tag[bytes->string/utf-8 bytes]
@racket/tag[bytes-append bytes]
@racket/tag[bytes-close-converter bytes]
@racket/tag[bytes-convert bytes]
@racket/tag[bytes-convert-end bytes]
@racket/tag[bytes-converter? bytes]
@racket/tag[bytes-copy bytes]
@racket/tag[bytes-copy! bytes]
@racket/tag[bytes-fill! bytes]
@racket/tag[bytes-length bytes]
@racket/tag[bytes-open-converter bytes]
@racket/tag[bytes-ref bytes]
@racket/tag[bytes-set! bytes]
@racket/tag[bytes-utf-8-index bytes]
@racket/tag[bytes-utf-8-length bytes]
@racket/tag[bytes-utf-8-ref bytes]
@racket/tag[bytes<? bytes]
@racket/tag[bytes=? bytes]
@racket/tag[bytes>? bytes]
@racket/tag[bytes? bytes]

@section{Characters}
@racket/tag[char->integer characters]
@racket/tag[char-alphabetic? characters]
@racket/tag[char-blank? characters]
@racket/tag[char-ci<=? characters]
@racket/tag[char-ci<? characters]
@racket/tag[char-ci=? characters]
@racket/tag[char-ci>=? characters]
@racket/tag[char-ci>? characters]
@racket/tag[char-downcase characters]
@racket/tag[char-foldcase characters]
@racket/tag[char-general-category characters]
@racket/tag[char-graphic? characters]
@racket/tag[char-iso-control? characters]
@racket/tag[char-lower-case? characters]
@racket/tag[char-numeric? characters]
@racket/tag[char-punctuation? characters]
@racket/tag[char-ready? characters]
@racket/tag[char-symbolic? characters]
@racket/tag[char-title-case? characters]
@racket/tag[char-titlecase characters]
@racket/tag[char-upcase characters]
@racket/tag[char-upper-case? characters]
@racket/tag[char-utf-8-length characters]
@racket/tag[char-whitespace? characters]
@racket/tag[char<=? characters]
@racket/tag[char<? characters]
@racket/tag[char=? characters]
@racket/tag[char>=? characters]
@racket/tag[char>? characters]
@racket/tag[char? characters]



@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Paths}
@racket/tag[absolute-path? paths]
@racket/tag[build-path paths]
@racket/tag[build-path/convention-type paths]
@racket/tag[cleanse-path paths]
@racket/tag[complete-path? paths]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Control operators and continuations}
@racket/tag[abort-current-continuation control]
@racket/tag[break-enabled control parameter]
@racket/tag[break-thread control]
@racket/tag[call-in-nested-thread control]
@racket/tag[call-with-composable-continuation control]
@racket/tag[call-with-continuation-barrier control]
@racket/tag[call-with-continuation-prompt control]
@racket/tag[call-with-current-continuation control]
@racket/tag[call-with-escape-continuation control]
@racket/tag[call-with-immediate-continuation-mark control]
@racket/tag[call-with-input-file control io]
@racket/tag[call-with-output-file control io]
@racket/tag[call-with-semaphore control]
@racket/tag[call-with-semaphore/enable-break control]
@racket/tag[call-with-values control]
@racket/tag[call/cc control]
@racket/tag[call/ec control]



@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Events}

@racket/tag[alarm-evt events]
@racket/tag[always-evt events]
@racket/tag[choice-evt events]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Procedures}

@racket/tag[arity-at-least procedures arity]
@racket/tag[arity-at-least-value procedures arity]
@racket/tag[arity-at-least? procedures arity]
@racket/tag[checked-procedure-check-and-extract]

               
@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Regular expressions}

@racket/tag[byte-pregexp regexps]
@racket/tag[byte-pregexp? regexps]
@racket/tag[byte-regexp regexps]
@racket/tag[byte-regexp? regexps]





@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


@section{Input/Output and ports}

@racket/tag[banner io optional]
@racket/tag[byte-ready? io]
@racket/tag[close-input-port io]
@racket/tag[close-output-port io]


@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


@section{Syntax}

@racket/tag[bound-identifier=? syntax]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


@section{Channels}
@racket/tag[channel-put-evt channels]
@racket/tag[channel-put-evt? channels]
@racket/tag[channel? channels]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Chaperones}
@racket/tag[chaperone-box chaperones]
@racket/tag[chaperone-continuation-mark-key chaperones]
@racket/tag[chaperone-evt chaperones]
@racket/tag[chaperone-hash chaperones]
@racket/tag[chaperone-of? chaperones]
@racket/tag[chaperone-procedure chaperones]
@racket/tag[chaperone-prompt-tag chaperones]
@racket/tag[chaperone-struct chaperones]
@racket/tag[chaperone-struct-type chaperones]
@racket/tag[chaperone-vector chaperones]
@racket/tag[chaperone? chaperones]



@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Runtime}
@racket/tag[collect-garbage runtime gc optional]

@;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

@section{Compilation}

@racket/tag[compile compilation]
@racket/tag[compile-allow-set!-undefined compilation]
@racket/tag[compile-context-preservation-enabled compilation]
@racket/tag[compile-enforce-module-constants compilation]
@racket/tag[compile-syntax compilation]
@racket/tag[compiled-expression? compilation]
@racket/tag[compiled-module-expression? compilation]




@section{Uncategorized}
The following are things I haven't yet categorized yet.

@(apply itemlist
        ;; These names have been computed by using inspecting-kernel.rkt
        (map (lambda (s) (item (symbol->string s)))
             '(               



               continuation-mark-key?
               continuation-mark-set->context
               continuation-mark-set->list
               continuation-mark-set->list*
               continuation-mark-set-first
               continuation-mark-set?
               continuation-marks
               continuation-prompt-available?
               continuation-prompt-tag?
               continuation?
               copy-file
               cos
               current-code-inspector
               current-command-line-arguments
               current-compile
               current-continuation-marks
               current-custodian
               current-directory
               current-drive
               current-error-port
               current-eval
               current-evt-pseudo-random-generator
               current-gc-milliseconds
               current-get-interaction-input-port
               current-inexact-milliseconds
               current-input-port
               current-inspector
               current-library-collection-paths
               current-load
               current-load-extension
               current-load-relative-directory
               current-load/use-compiled
               current-locale
               current-logger
               current-memory-use
               current-milliseconds
               current-module-declare-name
               current-module-declare-source
               current-module-name-resolver
               current-namespace
               current-output-port
               current-preserved-thread-cell-values
               current-print
               current-process-milliseconds
               current-prompt-read
               current-pseudo-random-generator
               current-read-interaction
               current-reader-guard
               current-readtable
               current-seconds
               current-security-guard
               current-subprocess-custodian-mode
               current-thread
               current-thread-group
               current-thread-initial-stack-size
               current-write-relative-directory
               custodian-box-value
               custodian-box?
               custodian-limit-memory
               custodian-managed-list
               custodian-memory-accounting-available?
               custodian-require-memory
               custodian-shutdown-all
               custodian?
               custom-print-quotable-accessor
               custom-print-quotable?
               custom-write-accessor
               custom-write?
               date
               date*
               date*-nanosecond
               date*-time-zone-name
               date*?
               date-day
               date-dst?
               date-hour
               date-minute
               date-month
               date-second
               date-time-zone-offset
               date-week-day
               date-year
               date-year-day
               date?
               datum->syntax
               datum-intern-literal
               default-continuation-prompt-tag
               delete-directory
               delete-file
               denominator
               directory-exists?
               directory-list
               display
               dump-memory-stats
               dynamic-require
               dynamic-require-for-syntax
               dynamic-wind
               eof
               eof-object?
               ephemeron-value
               ephemeron?
               eprintf
               eq-hash-code
               eq?
               equal-hash-code
               equal-secondary-hash-code
               equal?
               equal?/recur
               eqv-hash-code
               eqv?
               error
               error-display-handler
               error-escape-handler
               error-print-context-length
               error-print-source-location
               error-print-width
               error-value->string-handler
               eval
               eval-jit-enabled
               eval-syntax
               even?
               evt?
               exact->inexact
               exact-integer?
               exact-nonnegative-integer?
               exact-positive-integer?
               exact?
               executable-yield-handler
               exit
               exit-handler
               exn
               exn-continuation-marks
               exn-message
               exn:break
               exn:break-continuation
               exn:break?
               exn:fail
               exn:fail:contract
               exn:fail:contract:arity
               exn:fail:contract:arity?
               exn:fail:contract:continuation
               exn:fail:contract:continuation?
               exn:fail:contract:divide-by-zero
               exn:fail:contract:divide-by-zero?
               exn:fail:contract:non-fixnum-result
               exn:fail:contract:non-fixnum-result?
               exn:fail:contract:variable
               exn:fail:contract:variable-id
               exn:fail:contract:variable?
               exn:fail:contract?
               exn:fail:filesystem
               exn:fail:filesystem:exists
               exn:fail:filesystem:exists?
               exn:fail:filesystem:version
               exn:fail:filesystem:version?
               exn:fail:filesystem?
               exn:fail:network
               exn:fail:network?
               exn:fail:out-of-memory
               exn:fail:out-of-memory?
               exn:fail:read
               exn:fail:read-srclocs
               exn:fail:read:eof
               exn:fail:read:eof?
               exn:fail:read:non-char
               exn:fail:read:non-char?
               exn:fail:read?
               exn:fail:syntax
               exn:fail:syntax-exprs
               exn:fail:syntax:unbound
               exn:fail:syntax:unbound?
               exn:fail:syntax?
               exn:fail:unsupported
               exn:fail:unsupported?
               exn:fail:user
               exn:fail:user?
               exn:fail?
               exn:srclocs-accessor
               exn:srclocs?
               exn?
               exp
               expand
               expand-once
               expand-syntax
               expand-syntax-once
               expand-syntax-to-top-form
               expand-to-top-form
               expand-user-path
               expt
               file-exists?
               file-or-directory-identity
               file-or-directory-modify-seconds
               file-or-directory-permissions
               file-position
               file-size
               file-stream-buffer-mode
               file-stream-port?
               filesystem-root-list
               find-system-path
               fixnum?
               floating-point-bytes->real
               flonum?
               floor
               flush-output
               for-each
               format
               fprintf
               free-identifier=?
               free-label-identifier=?
               free-template-identifier=?
               free-transformer-identifier=?
               gcd
               gensym
               get-output-bytes
               get-output-string
               getenv
               global-port-print-handler
               handle-evt
               handle-evt?
               hash
               hash-copy
               hash-count
               hash-eq?
               hash-equal?
               hash-eqv?
               hash-for-each
               hash-iterate-first
               hash-iterate-key
               hash-iterate-next
               hash-iterate-value
               hash-map
               hash-placeholder?
               hash-ref
               hash-remove
               hash-remove!
               hash-set
               hash-set!
               hash-weak?
               hash?
               hasheq
               hasheqv
               identifier-binding
               identifier-label-binding
               identifier-prune-lexical-context
               identifier-prune-to-source-module
               identifier-remove-from-definition-context
               identifier-template-binding
               identifier-transformer-binding
               imag-part
               immutable?
               impersonate-box
               impersonate-continuation-mark-key
               impersonate-hash
               impersonate-procedure
               impersonate-prompt-tag
               impersonate-struct
               impersonate-vector
               impersonator-of?
               impersonator-prop:application-mark
               impersonator-property-accessor-procedure?
               impersonator-property?
               impersonator?
               inexact->exact
               inexact-real?
               inexact?
               input-port?
               inspector?
               integer->char
               integer->integer-bytes
               integer-bytes->integer
               integer-length
               integer-sqrt
               integer-sqrt/remainder
               integer?
               internal-definition-context-seal
               internal-definition-context?
               keyword->string
               keyword<?
               keyword?
               kill-thread
               lcm
               length
               liberal-define-context?
               link-exists?
               list
               list*
               list->bytes
               list->string
               list->vector
               list-ref
               list-tail
               list?
               load
               load-extension
               load-on-demand-enabled
               local-expand
               local-expand/capture-lifts
               local-transformer-expand
               local-transformer-expand/capture-lifts
               locale-string-encoding
               log
               log-level?
               log-max-level
               log-message
               log-receiver?
               logger-name
               logger?
               magnitude
               make-bytes
               make-channel
               make-continuation-mark-key
               make-continuation-prompt-tag
               make-custodian
               make-custodian-box
               make-derived-parameter
               make-directory
               make-empty-namespace
               make-ephemeron
               make-file-or-directory-link
               make-hash
               make-hash-placeholder
               make-hasheq
               make-hasheq-placeholder
               make-hasheqv
               make-hasheqv-placeholder
               make-immutable-hash
               make-immutable-hasheq
               make-immutable-hasheqv
               make-impersonator-property
               make-input-port
               make-inspector
               make-known-char-range-list
               make-log-receiver
               make-logger
               make-output-port
               make-parameter
               make-pipe
               make-placeholder
               make-polar
               make-prefab-struct
               make-pseudo-random-generator
               make-reader-graph
               make-readtable
               make-rectangular
               make-rename-transformer
               make-resolved-module-path
               make-security-guard
               make-semaphore
               make-set!-transformer
               make-shared-bytes
               make-sibling-inspector
               make-special-comment
               make-string
               make-struct-field-accessor
               make-struct-field-mutator
               make-struct-type
               make-struct-type-property
               make-syntax-delta-introducer
               make-syntax-introducer
               make-thread-cell
               make-thread-group
               make-vector
               make-weak-box
               make-weak-hash
               make-weak-hasheq
               make-weak-hasheqv
               make-will-executor
               map
               max
               mcar
               mcdr
               mcons
               member
               memq
               memv
               min
               module->exports
               module->imports
               module->language-info
               module->namespace
               module-compiled-exports
               module-compiled-imports
               module-compiled-language-info
               module-compiled-name
               module-compiled-submodules
               module-declared?
               module-path-index-join
               module-path-index-resolve
               module-path-index-split
               module-path-index-submodule
               module-path-index?
               module-path?
               module-predefined?
               module-provide-protected?
               modulo
               mpair?
               nack-guard-evt
               namespace-attach-module
               namespace-attach-module-declaration
               namespace-base-phase
               namespace-mapped-symbols
               namespace-module-identifier
               namespace-module-registry
               namespace-require
               namespace-require/constant
               namespace-require/copy
               namespace-require/expansion-time
               namespace-set-variable-value!
               namespace-symbol->identifier
               namespace-syntax-introduce
               namespace-undefine-variable!
               namespace-unprotect-module
               namespace-variable-value
               namespace?
               negative?
               never-evt
               newline
               not
               null
               null?
               number->string
               number?
               numerator
               object-name
               odd?
               open-input-bytes
               open-input-file
               open-input-output-file
               open-input-string
               open-output-bytes
               open-output-file
               open-output-string
               ormap
               output-port?
               pair?
               parameter-procedure=?
               parameter?
               parameterization?
               path->bytes
               path->complete-path
               path->directory-path
               path->string
               path-convention-type
               path-element->bytes
               path-element->string
               path-for-some-system?
               path?
               peek-byte
               peek-byte-or-special
               peek-bytes
               peek-bytes!
               peek-bytes-avail!
               peek-bytes-avail!*
               peek-bytes-avail!/enable-break
               peek-char
               peek-char-or-special
               peek-string
               peek-string!
               pipe-content-length
               placeholder-get
               placeholder-set!
               placeholder?
               poll-guard-evt
               port-closed-evt
               port-closed?
               port-commit-peeked
               port-count-lines!
               port-count-lines-enabled
               port-display-handler
               port-file-identity
               port-file-unlock
               port-next-location
               port-print-handler
               port-progress-evt
               port-provides-progress-evts?
               port-read-handler
               port-try-file-lock?
               port-write-handler
               port-writes-atomic?
               port-writes-special?
               positive?
               prefab-key->struct-type
               prefab-key?
               prefab-struct-key
               pregexp
               pregexp?
               primitive-closure?
               primitive-result-arity
               primitive?
               print
               print-as-expression
               print-boolean-long-form
               print-box
               print-graph
               print-hash-table
               print-mpair-curly-braces
               print-pair-curly-braces
               print-reader-abbreviations
               print-struct
               print-syntax-width
               print-unreadable
               print-vector-length
               printf
               procedure->method
               procedure-arity
               procedure-arity-includes?
               procedure-arity?
               procedure-closure-contents-eq?
               procedure-extract-target
               procedure-reduce-arity
               procedure-rename
               procedure-struct-type?
               procedure?
               progress-evt?
               prop:arity-string
               prop:checked-procedure
               prop:custom-print-quotable
               prop:custom-write
               prop:equal+hash
               prop:evt
               prop:exn:srclocs
               prop:impersonator-of
               prop:incomplete-arity
               prop:input-port
               prop:liberal-define-context
               prop:output-port
               prop:procedure
               prop:rename-transformer
               prop:set!-transformer
               pseudo-random-generator->vector
               pseudo-random-generator-vector?
               pseudo-random-generator?
               putenv
               quotient
               quotient/remainder
               raise
               raise-argument-error
               raise-arguments-error
               raise-arity-error
               raise-mismatch-error
               raise-range-error
               raise-result-error
               raise-syntax-error
               raise-type-error
               raise-user-error
               random
               random-seed
               rational?
               read
               read-accept-bar-quote
               read-accept-box
               read-accept-compiled
               read-accept-dot
               read-accept-graph
               read-accept-infix-dot
               read-accept-lang
               read-accept-quasiquote
               read-accept-reader
               read-byte
               read-byte-or-special
               read-bytes
               read-bytes!
               read-bytes-avail!
               read-bytes-avail!*
               read-bytes-avail!/enable-break
               read-bytes-line
               read-case-sensitive
               read-char
               read-char-or-special
               read-curly-brace-as-paren
               read-decimal-as-inexact
               read-language
               read-line
               read-on-demand-source
               read-square-bracket-as-paren
               read-string
               read-string!
               read-syntax
               read-syntax/recursive
               read/recursive
               readtable-mapping
               readtable?
               real->double-flonum
               real->floating-point-bytes
               real->single-flonum
               real-part
               real?
               regexp
               regexp-match
               regexp-match-peek
               regexp-match-peek-immediate
               regexp-match-peek-positions
               regexp-match-peek-positions-immediate
               regexp-match-peek-positions-immediate/end
               regexp-match-peek-positions/end
               regexp-match-positions
               regexp-match-positions/end
               regexp-match/end
               regexp-match?
               regexp-max-lookbehind
               regexp-replace
               regexp-replace*
               regexp?
               relative-path?
               remainder
               rename-file-or-directory
               rename-transformer-target
               rename-transformer?
               resolve-path
               resolved-module-path-name
               resolved-module-path?
               reverse
               round
               seconds->date
               security-guard?
               semaphore-peek-evt
               semaphore-peek-evt?
               semaphore-post
               semaphore-try-wait?
               semaphore-wait
               semaphore-wait/enable-break
               semaphore?
               set!-transformer-procedure
               set!-transformer?
               set-box!
               set-mcar!
               set-mcdr!
               set-port-next-location!
               shared-bytes
               shell-execute
               simplify-path
               sin
               single-flonum?
               sleep
               special-comment-value
               special-comment?
               split-path
               sqrt
               srcloc
               srcloc-column
               srcloc-line
               srcloc-position
               srcloc-source
               srcloc-span
               srcloc?
               string
               string->bytes/latin-1
               string->bytes/locale
               string->bytes/utf-8
               string->immutable-string
               string->keyword
               string->list
               string->number
               string->path
               string->path-element
               string->symbol
               string->uninterned-symbol
               string->unreadable-symbol
               string-append
               string-ci<=?
               string-ci<?
               string-ci=?
               string-ci>=?
               string-ci>?
               string-copy
               string-copy!
               string-downcase
               string-fill!
               string-foldcase
               string-length
               string-locale-ci<?
               string-locale-ci=?
               string-locale-ci>?
               string-locale-downcase
               string-locale-upcase
               string-locale<?
               string-locale=?
               string-locale>?
               string-normalize-nfc
               string-normalize-nfd
               string-normalize-nfkc
               string-normalize-nfkd
               string-ref
               string-set!
               string-titlecase
               string-upcase
               string-utf-8-length
               string<=?
               string<?
               string=?
               string>=?
               string>?
               string?
               struct->vector
               struct-accessor-procedure?
               struct-constructor-procedure?
               struct-info
               struct-mutator-procedure?
               struct-predicate-procedure?
               struct-type-info
               struct-type-make-constructor
               struct-type-make-predicate
               struct-type-property-accessor-procedure?
               struct-type-property?
               struct-type?
               struct:arity-at-least
               struct:date
               struct:date*
               struct:exn
               struct:exn:break
               struct:exn:fail
               struct:exn:fail:contract
               struct:exn:fail:contract:arity
               struct:exn:fail:contract:continuation
               struct:exn:fail:contract:divide-by-zero
               struct:exn:fail:contract:non-fixnum-result
               struct:exn:fail:contract:variable
               struct:exn:fail:filesystem
               struct:exn:fail:filesystem:exists
               struct:exn:fail:filesystem:version
               struct:exn:fail:network
               struct:exn:fail:out-of-memory
               struct:exn:fail:read
               struct:exn:fail:read:eof
               struct:exn:fail:read:non-char
               struct:exn:fail:syntax
               struct:exn:fail:syntax:unbound
               struct:exn:fail:unsupported
               struct:exn:fail:user
               struct:srcloc
               struct?
               sub1
               subbytes
               subprocess
               subprocess-group-enabled
               subprocess-kill
               subprocess-pid
               subprocess-status
               subprocess-wait
               subprocess?
               substring
               symbol->string
               symbol-interned?
               symbol-unreadable?
               symbol?
               sync
               sync/enable-break
               sync/timeout
               sync/timeout/enable-break
               syntax->datum
               syntax->list
               syntax-arm
               syntax-column
               syntax-disarm
               syntax-e
               syntax-line
               syntax-local-bind-syntaxes
               syntax-local-context
               syntax-local-expand-expression
               syntax-local-get-shadower
               syntax-local-introduce
               syntax-local-lift-context
               syntax-local-lift-expression
               syntax-local-lift-module-end-declaration
               syntax-local-lift-provide
               syntax-local-lift-require
               syntax-local-lift-values-expression
               syntax-local-make-definition-context
               syntax-local-make-delta-introducer
               syntax-local-module-defined-identifiers
               syntax-local-module-exports
               syntax-local-module-required-identifiers
               syntax-local-name
               syntax-local-phase-level
               syntax-local-submodules
               syntax-local-transforming-module-provides?
               syntax-local-value
               syntax-local-value/immediate
               syntax-original?
               syntax-position
               syntax-property
               syntax-property-symbol-keys
               syntax-rearm
               syntax-shift-phase-level
               syntax-source
               syntax-source-module
               syntax-span
               syntax-taint
               syntax-tainted?
               syntax-track-origin
               syntax-transforming-module-expression?
               syntax-transforming?
               syntax?
               system-big-endian?
               system-idle-evt
               system-language+country
               system-library-subpath
               system-path-convention-type
               system-type
               tan
               terminal-port?
               thread
               thread-cell-ref
               thread-cell-set!
               thread-cell-values?
               thread-cell?
               thread-dead-evt
               thread-dead?
               thread-group?
               thread-receive
               thread-receive-evt
               thread-resume
               thread-resume-evt
               thread-rewind-receive
               thread-running?
               thread-send
               thread-suspend
               thread-suspend-evt
               thread-try-receive
               thread-wait
               thread/suspend-to-kill
               thread?
               time-apply
               truncate
               unbox
               uncaught-exception-handler
               use-collection-link-paths
               use-compiled-file-paths
               use-user-specific-search-paths
               values
               variable-reference->empty-namespace
               variable-reference->module-base-phase
               variable-reference->module-declaration-inspector
               variable-reference->module-path-index
               variable-reference->module-source
               variable-reference->namespace
               variable-reference->phase
               variable-reference->resolved-module-path
               variable-reference-constant?
               variable-reference?
               vector
               vector->immutable-vector
               vector->list
               vector->pseudo-random-generator
               vector->pseudo-random-generator!
               vector->values
               vector-copy!
               vector-fill!
               vector-immutable
               vector-length
               vector-ref
               vector-set!
               vector-set-performance-stats!
               vector?
               version
               void
               void?
               weak-box-value
               weak-box?
               will-execute
               will-executor?
               will-register
               will-try-execute
               with-input-from-file
               with-output-to-file
               wrap-evt
               write
               write-byte
               write-bytes
               write-bytes-avail
               write-bytes-avail*
               write-bytes-avail-evt
               write-bytes-avail/enable-break
               write-char
               write-special
               write-special-avail*
               write-special-evt
               write-string
               zero?)))
