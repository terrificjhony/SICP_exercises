(define (last-pair x)
  (if (null? (cdr x))
      x
      (last-pair (cdr x))))

(define i (last-pair (list 1 3 4 5 6 "j")))
      
