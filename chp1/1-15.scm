#lang scheme

;1-15


;code
(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.01))
      angle
      (p (sine (/ angle 3.0)))))


;1.how many times is procedure p called?
;answer:    (p(sine 4.05) =>(p (sine 1.35) => (p (sine 0.45) => (p (sine 0.15) => (p (sine 0.05)
;totally 5

;2. space && steps
;as n grows by * 3:
;space: constant
;steps: linear