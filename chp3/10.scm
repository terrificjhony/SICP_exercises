;;;与原文中的模型相比,多了一层:在调用完initial-amount之后,紧接着又建立了一个新的函数,退去语法糖的外衣之后,就是
;;;(lambda(balance) <body> value)  因为是新建了函数,所以又建立了新环境.接下来的操作与原文相同.

;;;b)
;;;他们的环境时独立的,互不影响.而互不影响的原因,在于w2完全是重新调用了make-withdraw过程.