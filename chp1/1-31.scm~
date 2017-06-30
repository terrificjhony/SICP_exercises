#lang scheme

(define (cube x) (* x x x))
(define (linear x) x)


;********code*************
(define (sum term a next b)
  (define (iter a result)
    (if (= 0 (- b a))
        result
        (iter (next a) (+ result (term (next a))))))
    (iter a (term a)))
;*********


  
;******** for test*************
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
tmp
ano

        