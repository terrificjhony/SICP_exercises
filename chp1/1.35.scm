#lang scheme
(define tolerance 0.00001)
;******** fixed-point ******** ******** 
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))

  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))

  (try first-guess))

;******** ******** ******** ******** ******** ********
(fixed-point cos 1.0)

;prove: change the form of the equation,then we can get exactly the form of the desired form.
(define val_golden_point (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0))
val_golden_pointa