(load "ch2support.scm")

;;;segment
(define (make-segment a b) (cons a b))			 
(define (start-segment x) (car x))
(define (end-segment x) (cdr x))

;;;point
(define (make-point x y) (cons x y))

(define (x-point t) (car t))

(define (y-point t) (cdr t ))

(define (midpoint-segment t)
  (make-point
   (/ (+ (x-point (start-segment t)) (x-point (end-segment t))) 2)
   (/ (+ (y-point (start-segment t)) (y-point (end-segment t))) 2)))


;;;print point
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
;******** ******** ******** ******** ******** ******** ******** 
(define (perimeter a)
  (* 2 (+ (car a) (cdr a))))
(define (area a)
  (* (car a) (cdr a)))

;********1st representation ******** ******** ******** ******** ******** ******** 

(define (seg_rect seg1 seg2);representation using segment
  (cons seg1 seg2)

(define (len_seg t)
  (sqrt (+ (square (- (x-point (start-segment t))
		      (x-point (end-segment t))))
	   (square (- (y-point (start-segment t))
		      (y-point (end-segment t)))))))
(define len_rect (cons (len_seg (car (seg_rect a b))) (len_seg (cdr (seg_rect a b)))))

;********2st representation ******** ******** ******** ******** ******** ******** 
(define (formal_rect a b);using length
  (cons a b))


