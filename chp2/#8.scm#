(load "7.scm")
(load "ch2support.scm")
(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
		 (- (upper-bound x) (lower-bound y)))))
  
(define i (sub-interval (cons 2 5) (cons 8 19)))
