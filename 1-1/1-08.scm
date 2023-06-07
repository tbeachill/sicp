; cube-root

#lang simply-scheme

(define (cubrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (cubrt-iter (improve guess x)
                   x)))

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess))
       3))

(define (square guess)
    (* guess guess))

(define (good-enough? guess x)
    (< (abs (- (improve guess x) guess))
       (* guess .001)))

(define (cubrt x)
    (cubrt-iter 1.1 x))


(cubrt 1234)
