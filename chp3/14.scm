;;;功能:逆序原有列表,不过第一个值不予考虑.

;;;求值前v:('a 'b 'c 'd)

;;;求值之后:
;;;w:('d 'c 'b 'a)
;;;v:(a')   (因为cdr a 为null,指针已改变)