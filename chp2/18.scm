;; (define (reverse lst)
;;     (iter lst '()))

;; (define (iter remained-items result)
;;     (if (null? remained-items)
;;         result
;;         (iter (cdr remained-items)
;;               (cons (car remained-items) result))))
(define (reverse lst)
  (if (null? (cdr lst))
      (list (car lst))
      (append (reverse (cdr lst)) (list (car lst)))))
