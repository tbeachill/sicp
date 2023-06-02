#lang simply-scheme

(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

(test 0 (p))

; applicative-order evaluation:
;     p is evaluated first, which evaluates p recursively infinitely.
;     test is never evaluated and there is no output.

; normal-order evaluation:
;     (if (= 0 0)
;         0
;         (p))

;     test is evaluated first and x = 0 = #t so 0 is returned and p is never evaluated.
