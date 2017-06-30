;;sum: s1(a,b) s2(c,d) width(s1,s2) = ((b+d) - (a+c))/2 = (b-a)/2 + (d-b)/2

;;multiplication:
;;if every element in s1,s2 is positive
;;s1(a, b) s2(c,d) (mul-interval s1 s2) = (ac,bd)
;;so the interval is (bd - ac)/2
;while the interval of each is (b-a)/2,(d-c)/2
