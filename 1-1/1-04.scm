#lang simply-scheme

; a + |b|
; if b is greater than 0 a + b is returned, else a - b is returned
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))
