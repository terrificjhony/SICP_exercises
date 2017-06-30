#lang scheme

(define (cube x) (* x x x))
(define (linear x) x)

  
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))    


(define (simpson f a b n)
  (define h (/ (- b a) n))    ;h

  (define (conv val)
    (define times (/ (- val a) h))    ;record times
    (cond ((= times 0) 1)
          ((= times n) 1)
          ((odd? times) 4)
          (else 2)))

  (define (next_val t) (+ t h))
         
  (define (conv_f x)
    (* (conv x) (f x)))

  (* (sum conv_f a next_val b)
     (/ h 3)))

(define tmp (simpson cube 2 8 10))
(define ano (simpson linear 2 8 1000))
;woops!I made it!It takes me a long time to debug.