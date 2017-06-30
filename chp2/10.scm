(load "ch2support.scm")
 (load "7.scm")
;; ;;original
;; (define (div-interval x y)
;;        (mul-interval x
;;                      (make-interval (/ 1.0 (upper-bound y))
;;                                     (/ 1.0 (lower-bound y)))))

;;new
(define (div-interval x y)
  (if (<= (* (lower-bound y) (upper-bound y)) 0))
  (display "error")
  (mul-interval x
		(make-interval (/ 1.0 (upper-bound y))
			       (/ 1.0 (lower-bound y)))))
