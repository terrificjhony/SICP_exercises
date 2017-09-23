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






































