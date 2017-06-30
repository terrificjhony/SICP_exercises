#lang scheme

(define (square x) (* x x))

(define (sqrt-iter guess x)
       (if (good-enough? guess (improve guess x));modify parameter: x -> (improved guess x)
           guess
           (sqrt-iter (improve guess x)
                      x)))

(define (improve guess x)
       (average guess (/ x guess)))

(define (average x y)
       (/ (+ x y) 2))

;midify good-enough?
(define (good-enough? guess last)
  (< (abs (- 1 (/ guess last))) 0.001))

(define (sqrt x)
       (sqrt-iter 1.0 x))

(sqrt 0.0000000001)
(sqrt 0.01)
(sqrt 1000000000000)
