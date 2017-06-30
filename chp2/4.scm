;; (define (cons x y)
;;   (lambda (m) (m x y)))

;; (define (car z)
;;   (z (lambda (p q) p)))

;; (car (cons x y))

;;******** explain******** ******** ******** 
					;I have to say this is amazing.
;;cons is a function,it use the lambda in car as argument,and this is another function.
;;So now we have a function ((lambda (p q) q) x y),so the result is x.

;;********cdr ******** ******** ******** ******** ********
;; a little bit change
;; (define (cons x y)
;;   (lambda (m) (m x y)))

;; (define (car z)
;;   (z (lambda (p q) q)))
;;******** substitution model ******** ******** ******** 
;; (lambda (lambda (p q) q) ((lambda (p q) q) x y))
;; ((lambda (p q) q) x y)
;; y
