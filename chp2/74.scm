(define (get-record value)
  (get '(car value) (car (car value))) (car (car value)))
