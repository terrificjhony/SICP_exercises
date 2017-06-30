(define (fringe x)
  (if (null? (cdr x))
      (car x)
      (append (car x) (fringe (cdr x)))))

	     
(list (list 1 2) (list 3 4)))
