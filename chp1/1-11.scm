#lang scheme
;1-11  tree recursion

;recursion type
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1)) (* 2(f (- n 2))) (* 3 (f (- n 3)))))))
(f 4);test

;the other
;(define (f n)
;    (f-iter 2 1 0 0 n))
;
;(define (f-iter a b c i n)
;    (if (= i n)
;        c
;        (f-iter (+ a (* 2 b) (* 3 c))   ; new a
;                a                       ; new b
;                b                       ; new c
;                (+ i 1)
;                n)))

(define (iter-f n)
  (if (< n 3)
      n
      (ite 2 1 0 0 n)))

(define (ite a b c i n)
  (if (= i n)
      c
      (ite (+ a (* 2 b) (* 3 c))
           a
           b
           (+ i 1)
           n)))
(iter-f 10)
(iter-f 9)

