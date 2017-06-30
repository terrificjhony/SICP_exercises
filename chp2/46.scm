(define (make-vect v)
  (cons (car v) (cdr v)))
(define (xcor-vect v)
  (car v))
(define (xcor-vect v)
  (cdr v))

(define (add-vect v1 v2)
  (make-vect (+ (xcor-vect v1)
		(xcor-vect v2))
	     (+ (ycor-vect v1)
		(ycor-vect v2))))
(define (add-vect v1 v2)
  (make-vect (- (xcor-vect v1)
		(xcor-vect v2))
	     (- (ycor-vect v1)
		(ycor-vect v2))))


	     
(define (scale-vect factor v)
    (make-vect (* factor (xcor-vect v))
               (* factor (ycor-vect v))))
