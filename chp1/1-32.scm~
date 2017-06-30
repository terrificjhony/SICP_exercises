#lang scheme

;******original factorial****
;(define (factorial a)
;  (if (= a 1)
;       1
;       (* a (factorial (- a 1)))))
;(factorial 3)

;*******product*************
(define (product term a next b)
  (if (<= a b)
      (term a)
      (* (term a)
         (product term (next a)  next b))))
;******* new_factorial **********
(define (factorial a)
  a)
(define (minus a)
  (- a 1))
;test
(product factorial 4 minus 1)


;******* a-calculate pi ********************** ******** ******** ******** ******** a)
(define (rule a)
  (if (even? a)
      (/ (+ 2 a) (+ 1 a))
      (/ (+ 1 a) (+ 2 a))))


(define cal_pi (* 4(product rule 20  minus 1)))
cal_pi

;******** b-iterable version **************** ******** ******** ******** ******** b)
(define (iter_product term a next b)
  (define (iter a result)
    (if (<= a b)
        result
        (iter (next a) (* result (term (next a))))))
  (iter a (term a)))

(* 4 (iter_product rule 20 minus 1))

;wow,it works!
      