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

;******** rec_accumulate ******** ******** ******** ******** ******** ******** ******** a)

(define (rec_accumulate combiner null-value term a next b)
  (if (<= a b)
      null-value
      (combiner (term a) (rec_accumulate combiner  null-value term (term a) next b))))

(define (acc_product a)
  (- a 1))
(define (combiner_product a b)
  (* a b))

(rec_accumulate combiner_product 1 acc_product 4 minus 1)
;add more module and code less for every module.


;******** iter_accumulate ******** ******** ******** ******** ******** ******** ********   b)
(define (iter_accumulate combiner null-value term a next b)
 (if (<= a b)
      null-value
      (iter_accumulate combiner  (combiner (term a) null-value) term (term a) next b)))

(iter_accumulate combiner_product 1 acc_product 4 minus 1);for test
;wow,I kinda get into it,its so elegant!
;******** filtered_accumulate ******** ******** ******** ******** ******** ******** ******** 
(define (filtered_accumulate predicate combiner null-value term a next b);elegant,we just need to add a if-else!
  (define judge
    (if (predicate a b)
        1
        0))
  (if (<= a b)
      (* null-value judge)
      (combiner (* judge (term a)) (filtered_accumulate predicate combiner  null-value term (next a) next b))))

;******** squares_prime******** ******** ******** ******** ******** ******** ******** ******** a)
 ;(define i (filtered_accumulate primes? plus null-value squares a next b))


;******** n_squares_prime******** ******** ******** ******** ******** ******** ******** ******** a)
(define (gcd a b);gcd
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (n_primes? a b);n_primes
  (if (gcd a b)
      1
      0))
;(define (plus a b) (+ a b))

(define (stay x) x)

(define (filtered_accumulate n_primes? * 1 stay 4 minus 1))















