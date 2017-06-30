(define (mul-interval x y)
  ;;(<0, >=0) 
  ;;(<0,<0) 
  ;;(>=0,>0)
  (define (sign t)
    (cond((>= t 0) 1)
	 ((< t 0) -1))
    
  (let((a1 (lower-bound x))
      (a2 (upper-bound x))
      (b1 (lower-bound y))
      (b2 (upper-bound y))
      (sa1 (sign a1))
      (sa2 (sign a2))
      (sb1 (sign b1))
      (sb2 (sign b2)))
    (cond ((< sa2 0)
	   (cond (< sb2 0)
		 (make-interval (* a1 b1) (* a2 b2))
		 ((< sb1 0) and (> sb2 0))
		 (make-interval (* a1 b2) (* a1 b1))
		 else
		 (make-interval (* b1 a2) (* a2 b1))))
	  ((> sa1 0)
	   (cond (> sb1 0)
		 (make-interval (* a1 b1) (* a2 b2))
		 (< sb2 0)
		 (make-interval (* a2 b1) (* a1 b2))
		 else
		 (make-interval (* a2 b1) (* a2 b2))))
	  (else
	   (cond (> sb1 0)
		 (make-interval (* a1 b2) (* a2 b2))
		 (< sb2 0)
		 (make-interval (* a2 b1) (* a1 b1))
		 else;this is the one has to multiply 3 times.
		 (let ((1_small (* a1 b2))
		       (2_samll (* a2 b1))
		       (smaller (if (< 1_small 2_small)
				    1_small
				    2_small)))
		   (make-interval smaller (* a2 b2)))))))))
;;shit,this is spends me so much time!and i don't wanna test it...
		 
				
		   
		   
	  
		 
				
	   
  
