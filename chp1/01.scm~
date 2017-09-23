#lang scheme

;(* author: Xinwen Jiang   mail: 763612666@qq.com    *)
;(* site: https://github.com/terrificjhony    blog: https://github.com/terrificjhony.io    *)
;all the code has been tested.
;(* ********************************************************************* *)
;1.1 result of expressions
;10
;12
;3
;6
;a = 3
;b = 4
;#f
;4
;17
;6
;16


;(* ********************************************************************* *)
;1.2 translate the expression
(/ (+ 5 (+ 4(- 2(- 3 (/ 4 5)))))
   (* 3 (- 6 2) (- 3 7)))


;(* ********************************************************************* *)
;1.3 define a procedure taking 3  arg and returning sum of 2 larger
(define (larger_2sum_of_3 x y z)
  (if (< x y)
      (if (< x z)
       (+ z y)
       (+ x y))
  ((if (< y z)
       (+ z x)
       (+ y x)))))


(define a (larger_2sum_of_3 1 2 4)) ;for test
(define w (larger_2sum_of_3 1 52 42)) ;for test


;(* ********************************************************************* *)
;1.4 describe the procedure
;get 2 arguments a b ,and return the sum of a and the absolute value of b


;(* ********************************************************************* *)
;1.5 tell if applicative
;(if applicative
;    0
;    infinite loop,no result);because the (p) is gonna keep call the procedure (p)


;(* ********************************************************************* *)
;1.6 why new-if failed
;it will never stop.Let me show the contrast.
;|***    feature   ***|
;if:     the branch won't get evaluated until the bool value is confirmed  
;new-if: both branch will get type checked

;result of new-if:
;    at the evaluate procedure,the function will always get called ,but no terminate.


;(* ********************************************************************* *)
;1.7 improve_good-enough
;original:
;>(sqrt 0.000000001)
;0.03125001065624928

;> (sqrt 0.0000000001)
;0.03125000106562499

;> (sqrt 0.00000000000000001)
;0.03125000000000011
;
;> (sqrt 1000000000000000000000000000000)
;1e+15

;> (sqrt 1000000000000000000000000000000000000000000000000000000000000)
;it falls into infinite loop

;summary ： when the number is too small,it's hard to tell the difference of 1e-18 && 1e-20
;          when the number is too big,it's unberable that the procedure falls into nearly infinite loop.
;So,using substration is not a good idea.

;    The IMPROVEMENT
;    using percentage rather than substraction
;(define (sqrt-iter guess x)
;       (if (good-enough? guess (improve guess x));modify parameter: x -> (improved guess x)
;           guess
;           (sqrt-iter (improve guess x)
;                      x)))
;
;;midify good-enough?
;(define (good-enough? guess last)
;  (< (abs (- 1 (/ guess last))) 0.001))
;
> (sqrt 0.0000000001)
1.0000558643074985e-05
> (sqrt 0.00000000000000001)
3.162285649222876e-09
>(sqrt 1000000000000000000000000000000000000000000000000000000000000)
1.0000788456669446e+30


;(* ********************************************************************* *)
;1.8 cube_newton
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

;(* ********************************************************************* *)
;1.9 show substitution model
;first one
(+ 4 5)
(inc (+ 3 5))
(inc (inc (+ 2 5)))
(inc (inc (inc (+ 1 5))))
(inc (inc (inc (inc (+ 0 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9

;the other
(+ 4 5)
(+ 3 6)
(+ 2 7)
(+ 1 8)
(+ 0 9)
9


;(* ********************************************************************* *)
;1.10  mathematical definical
;f 2*n
;g 2^n
;k ** remain to be done**


;(* ********************************************************************* *)
;1.9 cube_newton



































