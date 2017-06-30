(define a (car (cdr (car (cdr (cdr (list 1 3 (list 5 7) 9)))))))

(define b(car (car (list (list 7)))))

(define c (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

;cdr cdr cdr cdr cdr +car
