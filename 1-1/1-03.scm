#lang simply-scheme

(define (square x) (* x x))

; sum of squares
(define (ss x y) (+ (square x) (square y)))

(define (ssTwoLargest x y z)
    (cond ((and (<= x y) (<= x z)) (ss y z))
          ((and (<= y x) (<= y z)) (ss x z))
          (else (ss x y))
    )
)

(ssTwoLargest 2 4 6)
