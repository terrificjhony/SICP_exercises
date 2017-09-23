
(define  (good-enough? old new)
  (> 0.01
     (/ (abs (- old new))
	old)))
	     
