(load "ch2support.scm")


(define (make-rat a b)
  (define sign
    (if (> (* a b) 0)
	1
	-1))	
  (define (conv n d sign)	  
    (let ((n1 (abs n))
	  (d1 (abs d))
	  (g (gcd n1 d1)))
      (cons (* sign (/ n1 g)) (/ d1 g))))
  (conv a b sign)

(make-rat 3 9)

  
