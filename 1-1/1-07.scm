#lang simply-scheme

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                   x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (square guess)
    (* guess guess))

;(define (good-enough? guess x)
;    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))


; Statement 1:
; The good-enough? test will not be very effective for finding the square roots of
; very small numbers.

;     The good-enough? test checks if the answer is close enough so that its square
;     differs from the radicand by less than a predetermined tolerance (0.001 in example).
;     The tolerance is too large for small numbers so the result of using this test
;     will give a square-root that is not close to the actual value.

; Statement 2:
; Arithmetic operations are performed with limited precision. This makes our test
; inadequate for very large numbers.

;     The limited precision means that the small difference of 0.001 may not be
;     represented on very large numbers. This means the good-enough? test will keep
;     returning false and the procedure will loop infinitely.


; changing the good-enough? function
(define (good-enough? guess x)
    (< (abs (- (improve guess x) guess))
       (* guess .001)))

(sqrt 10)
