

(define (rand)
  (let ((x 8))
    (define (generate)
      (lambda (x)
	(begin
	  (set! x (rand-update x))
	  x)))
    (define (reset)
      (lambda (new)
	(begin
	  (set! x new)
	  (x))))
    (define (judge m)
      (cond ((eq? (car m) 'generate)
	     generate)
	    ((eq? (car m) 'reset)
	     (reset (cadr m))))))
  judge)




