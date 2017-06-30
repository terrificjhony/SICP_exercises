#lang scheme

(define (multi a b)
    (cond ((= b 0)
            0)
          ((even? b)
            (double (multi a (halve b))))
          ((odd? b)
            (+ a (multi a (- b 1))))))
(define (double n)
    (+ n n))

(define (halve n)
    (/ n 2))
(multi 3 4)