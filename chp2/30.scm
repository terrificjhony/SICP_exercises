(define (square-tree x)
  (cond ((null? x) '())
	((not (pair? x)) (square x))
	(else (cons (square-tree (car x)) (square-tree (cdr x))))))

(define i  (square-tree
           (list 1
                 (list 2 (list 3 4) 5)
                 (list 6 7))))



;;map 做的事情是分解,它将原本的item中的内容不断拆分,而另一个function的功能时什么?它是设定对于每个拆分出的内容,对应的应该执行什么样的函数.如果拆分出的是一个值,那么用求值函数,如果出现的是一个组块,即可以用pair来表示,那么就需要用对应的求pair的函数来表达.也就是说,在map执行了操作以后,出现了一块数据,而当函数作用于这个数据的时候,应为我这个过程判断出了它是何种数据,所以我又可以进一步地调用其他函数来执行这样的操作.因此,这样的分工非常有帮助

(define (map-square-tree x)
  (map
   (lambda (x)
     (if (pair? x)
	 (map-square-tree x)
	 (square x)))
   x))

(define j  (map-square-tree
	    (list 1 (list 2 (list 3 4) 5) (list 6 7))))

