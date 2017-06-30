;;a
;;a1) 先对函数本身作简单的判断:1. 如果表达式是数字,结果为0.如果是变量,那么变量与var(求导的变量)相同时,返回1,否则为0.
;;a2)为什么不能进入:因为以上的两种情况根本没有operator,属于特殊情况.如果非要加入,那么条件判断本身就会变得复杂,不如提前处理.

;;b
;;******** sums
    ;;;inner structure 
(define (install-deriv-sums)
  (define (addend s)
    (car s))
  (define (augend s)
    (cdr s))
  (define (make-sum x y)
    (cond ((=number? x 0) y)
	  ((=number? y 0) x)
	  ((and (number? x) (number? y))
	   (+ x y))
	  (else
	   (attach-tag '+ x y))))

  ;;;interface
  (put 'addend '+ addend)
  (put 'augend '+ augend)
  (put 'make-sum '+ make-sum)
  (put 'deriv '+ (lambda(exp var)
		   (make-sum (deriv (addend exp) var)
			     (deriv (augend exp) var))))
  'done)

(define (make-sum x y)
  ((get 'make-sum '+ ) x y))
(define (addend sum)
  ((get 'addend '+) (contents sum)))
(define (augend sum)
  ((get 'augend '+) (contents sum)))


;;******** product
(define (install-product-package)

    ;;; internal procedures
    (define (multiplier p)
        (car p))

    (define (multiplicand p)
        (cadr p))

    (define (make-product x y)
        (cond ((or (=number? x 0) (=number? y 0))
                0)
              ((=number? x 1)
                y)
              ((=number? y 1)
                x)
              ((and (number? x) (number? y))
                (* x y))
              (else
                (attach-tag '* x y))))

    ;;; interface to the rest of the system
    (put 'multiplier '* multiplier)
    (put 'multiplicand '* multiplicand)
    (put 'make-product '* make-product)

    (put 'deriv '*
        (lambda (exp var)
            (make-sum
                (make-product (multiplier exp)
                              (deriv (multiplicand exp) var))
                (make-product (deriv (multiplier exp) var)
                              (multiplicand exp)))))

'done)

(define (make-product x y)
    ((get 'make-product '*) x y))

(define (multiplier product)
    ((get 'multiplier '*) (contents product)))

(define (multiplicand product)
  ((get 'multiplicand '*) (contents product)))



;;******** exp
(define (install-exponentiation-package)

    ;;; internal procedures
    (define (base exp)
        (car exp))

    (define (exponent exp)
        (cadr exp))

    (define (make-exponentiation base n)
        (cond ((= n 0)
                0)
              ((= n 1)
                base)
              (else
                (attach-tag '** base n))))

    ;;; interface to the rest of the system
    (put 'base '** base)
    (put 'exponent '** exponent)
    (put 'make-exponentiation '** make-exponentiation)

    (put 'deriv '**
         (lambda (exp var)
            (let ((n (exponent exp))
                  (u (base exp)))
                (make-product
                    n
                    (make-product
                        (make-exponentiation
                            u
                            (- n 1))
                        (deriv u var))))))

'done)

(define (make-exponentiation base n)
    ((get 'make-exponentiation '**) base n))

(define (base exp)
    ((get 'base '**) (contents exp)))

(define (exponent exp)
  ((get 'exponent '**) (contents exp)))



;;d)
;;put中的参数也要相应改变
