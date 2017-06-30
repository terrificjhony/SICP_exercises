;; (define (estimate-pi trials)
;;   (sqrt (/ 6 (monte-carlo trials cesaro-test))))

(define (random-in-range low high)
            (let ((range (- high low)))
              (+ low (random range))))

 ;;monte-carlo
(define (monte-carlo trials experiment)
  (define (iter trials-remaining trials-passed)
    (cond ((= trials-remaining 0)
	   (/ trials-passed trials))
	  ((experiment)
	   (iter (- trials-remaining 1) (+ trials-passed 1)))
	  (else
	   (iter (- trials-remaining 1) trials-passed))))
  (iter trials 0))
;;combine random number 
(define (comb-rand a1 a2 b1 b2)
  (cons (random-in-range a1 a2) (random-in-range b1 b2)))

;;exp
(define (exp p a1 a2 b1 b2)
  (p (comb-rand a1 a2 b1 b2)))



;;p谓词判断
(define (p? x)
  (<= (+ (square (- (car x) 5)) (square (- (cdr x) 7))) 9))

;;estimate
(define (estimate-integral p x1 x2 y1 y2 trials)
  (/ (* 36
	(monte-carlo trials (exp p x1 x2 y1 y2)))
     9))
  
(define i (estimate-integral  p? 2 8 4 10 100))

  
