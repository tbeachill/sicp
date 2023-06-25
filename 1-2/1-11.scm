#lang simply-scheme

; recursive
(define (func-rec n)
    (if (< n 3)
        n
        (+ (func-rec (- n 1))
           (* 2 (func-rec (- n 2)))
           (* 3 (func-rec (- n 3))))))

; iterative
(define (func-iter n)
    (if (< n 3)
        n
        (func-loop 2 1 0 2 n)))

(define (func-loop n-1 n-2 n-3 nth n)
    (if (= n nth)
        n-1
        (func-loop (+ n-1
                      (* 2 n-2)
                      (* 3 n-3))
                   n-1
                   n-2
                   (+ 1 nth)
                   n)))


(display (func-rec 10))
(newline)
(display (func-iter 10))
(newline)
