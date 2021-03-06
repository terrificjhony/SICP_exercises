### 01a-Introduction to Lisp
作者一上来就给COMPUTER SCIENCE 这2个词都打了个叉：computer science既不与计算机有关，也不与科学有关。。。人们错误地认为，计算机科学主要与研究计算机有关,与科学有关。但是，打个比方，几何学处于萌芽状态时，只是用一些工具做丈量，但是这并不意味着几何学就与这些工具紧密相关了。事实上几何学关注的，是陈述事实。同样的道理，当人们回溯计算机的历史时，也不会仅仅将计算机科学看成是仅仅与计算机有关的学问，计算机只是媒介，我们用它来清晰地表达如何做好事情。

作者在其中强调，计算机科学与其它工程又有不同之处，那边是计算机科学常常可以做到非常好的抽象：一个工程师连接几个放大器(amplifier)，对信号没什么影响，但是如果它连接非常多个，那么放大器就失去了它原本的效果。也就是是说，其他工程问题，常常要处理复杂得多的现象，但是计算接科学没有那么复杂，我可以做到很好地将这些现象串联到一起，而做到几乎没什么副作用。但是这并不意味着计算机科学会很简单。实际上，它帮助我们思考的最重要的问题，就是处理复杂（complexity)。

社会中的很多项目都非常复杂，需要付出大量的人力与资源，我们在处理复杂方面，还没有那么多的经验，通过计算机科学，我们在寻找解决此类问题的方式。

在本节中，作者谈论了几个减少复杂度的方式：

1. black-box abstraction
	1. primitive objects
		1. primitive procedures
		primitive data
	2. means of combination
		1. procedure composition
		2. construction of compound data
	3. means of abstraction
		1. procudure definition
		2. simple data abstraction
	4. capturing common patterns
		1. high-order procedures
		2. data as procedures
2. conventional interface
	1. generic operations
	2. large-scale structure and modularity
	3. OOP
	3. operations on aggregates
3. metalinguistic  abstractions
这便构成了本书的一条主线：在前两章中，会看到black-box抽象的2种主要方式：过程抽象（procedure abstraction）以及 数据抽象(data abstraction),到了第三章，我们则会看到界面的一些方法，如流（stream），面向对象（OOP），到了最后2章，则是通过深入一个层次，修改底层的内容,来减少复杂度。

在接下来的内容中，作者谈到了描述语言需要关注的3个方面：
1. primitive elements
2. means of combination
3. means of abstraction
翻译下来，便是：初始元素，组合的方式，抽象的方式。

之后，作者介绍了Lisp中的一些语法：前缀表达式 (prefix notation)、 函数`(define (square x) (* x x))`中的语法糖、define作为过程抽象的方式、cond。



摘录一些句子：

>  Now,the reason that we think computer science is about computers is pretty much the same reason that Egyptians thought geometry was about survey instruments.And that is ,when some field is just getting started, you don't really understand it very well,it's very easy to confuse the essence of what you're doing with the tools that you use.
