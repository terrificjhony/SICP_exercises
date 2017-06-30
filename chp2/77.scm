;;;原因:查表是基础,但是表中并没有定义直接查询的过程,所以根本没法继续执行.

;;apply-generic运用了2次.apply-generic为查表服务,查了几次表,就说明应用了几次.
;;第1次:找到对应的magnitude过程.
;;第2次:complex类型可能是rectangle,有可能是polar,所以再一次查表.

;;magnitude 运行了3次
;;初始查表的值=>complex内部用于查表=>对应的rect/polar调用.
