;;cons
(define (make-frame origin edge1 edge2)
  (cons origin
	(cons edge1 edge2)))

(define (origin-frame f)
  (car f))

(define (edge1-frame f)
  (cadr f))

(define (edge2-frame f)
  (cddr f))

;;list
(define (make-frame origin edge1 edge2)
    (list origin edge1 edge2))

(define (origin-frame f)
    (car f))

(define (edge1-frame f)
    (cadr f))

(define (edge2-frame f);;compared with the 1st,there's an extra move that is (car)
    (caddr f))
