
(define (make-monitored f)
  (let ((times 0))
    (lambda (arg)
      (cond ((eq? arg 'how-many-calls?)
	     times)
	    ((eq? arg 'rest-count)
	     (begin (set! times 0)
		    times))
	    (else
	     (begin (set! times (+ 1 times))
		    (f arg)))))))
