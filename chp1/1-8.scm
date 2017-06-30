#lang scheme

(define (square x) (* x x))

(define (cubic-iter guess x)
       (if (good-enough? guess (improve guess x))
           guess
           (cubic-iter (improve guess x)
                      x)))

(define (improve guess x)
       (cube guess x))

(define (cube y x)
       (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (good-enough? guess last)
  (< (abs (- 1 (/ guess last))) 0.001))

(define (cubic x)
       (cubic-iter 1.0 x))


(cubic 0.0000000001)
(cubic 0.01)
(cubic (* 5 5 5))
