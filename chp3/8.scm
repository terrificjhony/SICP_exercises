(define (f)
  (define a 1)
  (lambda (x)
    (set! a (/ 1 (+ a x)))))
    
