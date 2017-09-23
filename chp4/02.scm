;1)
;;;The problem is that,the cond will then mis-classify "define" into "apply",and then as the apply indicates,the operator is "define",the operand is "x" "3"
;;;So when trying to evaluate x,the error creeps in:The previous env may doesn't contain x or contains x of a different env.

;2)
;;;in eval,everything remains the same
;;;in the representation,there's some little change:
(define (application? exp)
  (eq? (car exp) 'call))

(define operator cadr)

(define operands (cddr))

(define no-operands? null?)

(define first-operand car)

(define rest-operand cdr)
