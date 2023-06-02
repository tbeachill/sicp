#lang simply-scheme

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

(new-if (= 2 3) 0 5) ; 5

(new-if (= 1 1) 0 5) ; 0

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
                       x)))

; The new-if will be evaluated using applicative order, rather than normal order.
; As the sqrt-iter procedure calls new-if and new-if calls sqrt-iter as its else-clause
; the two procedures will call each other cyclically until a stack overflow occurs.
