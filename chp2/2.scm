(define (make-segment a b) (cons a b))			 
(define (start-segment x) (car x))
(define (end-point x) (cdr x))


(define (make-point x y) (cons x y))

(define (x-point t) (car t))
  
(define (y-point t) (cdr t ))

(define (midpoint-segment t)
  (make-point
   (/ (+ (x-point (start-segment t)) (x-point (end-point t))) 2)
   (/ (+ (y-point (start-segment t)) (y-point (end-point t))) 2)))



(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
					;test
(define i (midpoint-segment (cons (cons 1 2) (cons 3 4))))
(display i)

