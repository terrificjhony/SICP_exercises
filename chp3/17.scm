;;;同样是摘抄的.本体解决思路,利用eq?方法来判断.
(define (count-pairs x)
  (length (inner x '())))

(define (inner x memo-list)
  (if (and (pair? x)
	   (false? (memq x memo-list)))
      (inner (car x)
	     (inner (cdr x)
		    (cons x memo-list)))
      memo-list))
