
;;;The problem is to find a way to deal with "cons".
;;;since the problem is on the cons ,then I think we have to replace the cons into other forms.Then we can use the "let" to pre-denote the evaluation.And that will  *guarantee*  it to be executed regardless of the built-in sequence,wow,wonderfil move.

;;;left->right
(define (list-of-values exps env)
  (if (no-operands? exps)
      '()
      (let ((tmp (eval (first-operand exps) env)))
	(cons tmp
	      (list-of-values (rest-operands exps) env)))))

;;;right->left
(define (list-of-values exps env)
  (if (no-operands? exps)
      '()
      (let ((tmp (eval (rest-operand exps) env)))
	(cons (list-of-values (first-operands exps) env)
	      tmp)))
