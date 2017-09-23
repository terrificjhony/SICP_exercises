;;;in eval:
;;;1-and
(define (eval exp env)
        (cond ...
             ((and? exp)  ;;;change
                (eval-and (and-exp exp) env))
              ...))

;;;implementation
(define (first-exp exps)
  (car exps))
(define (rest-exp exps)
  (cdr exps))

(define (eval-and exps env)
  (cond ((null? exps)
	 #t)
	((last-exp? (first-exp exps))
	 (eval (first-exp exps)))
	((true? (eval (first-exp exps) env))
	 (eval-and (rest-exp exps) env))
	(else
	 #f)))

;;;2-or
;;; in eval:
((or? exp)
 (eval-or (or-exp exp) env))

;;;implementation
(define (eval-or exps env)
  (cond ((null? exps)
	 #f)
	((last-exp? (first-exp exps))
	 (eval (first-exp exps)))
	((false? (eval (first-exp exps) env))
	 (eval-and (rest-exp exps) env))
	(else
	 #f)))


;;;use derivation form
(define (eval-and exps env)
  (if (null? exps)
      #t
      (if (eval (first-exp exps) env)
	  (eval-and (last-exp exps) env)
	  #f)))
