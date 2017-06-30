;;;modify make-account to contain password
;; (define (make-account balance)
;;   (define (withdraw amount)
;;     (if (>= balance amount)
;; 	(begin (set! balance (- balance amount))
;; 	       balance)
;; 	"Insufficient funds"))
;;   (define (deposit amount)
;;     (set! balance (+ balance amount))
;;     balance)
;;   (define (dispatch m)
;;     (cond ((eq? m 'withdraw) withdraw)
;; 	  ((eq? m 'deposit) deposit)
;; 	  (else (error "Unknown request -- MAKE-ACCOUNT"
;; 		       m))))
;;   dispatch)

;; (define acc (make-account 100))


(define (make-account balance pass)
  (define password pass)
;;;  (define times 0)
  (define (withdraw amount)
    (if (>= balance amount)
	(begin (set! balance (- balance amount))
	       balance)
	"Insufficienct funds"))

  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)
  (define (dispatch p m)
    (let ((times 0))
      ((if (eq? p password)
	   (begin (set! password 0)
		  (cond ((eq? m 'withdraw) withdraw)
			((eq? m 'deposit) deposit)
			(else (error "Unknown request -- MAKE-ACCOUNT"
				     m))))
	   (begin (display "Incorrect password")
		  (set! times (+ 1 times))
		  (lambda (times)
		    (if (= 7 times)
			(error "police!")))
	      ;;;(display "times"))))))
		  dispatch)


