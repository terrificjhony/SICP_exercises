(load "18.scm")
(define (deep-reverse lst)
  (if (null? (cdr lst))
      (reverse (car lst))
      (list (deep-reverse (cdr lst)) (reverse (car lst)))))


;;not that difficult,huh?
