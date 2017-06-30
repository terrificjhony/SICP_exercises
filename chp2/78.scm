(define (contents datum)
  (cond ((pairs? datum) (cdr datum))
	((num? datum) datum)
	(else (error "Bad tagged datum -- CONTENTS" datum))))

(define (type-datum datum)
  (cond ((pairs? datum) (dar datum))
	((num? datum) scheme-number)))

(define (attach-tag type-tag contents)
    (if (number? contents)
        contents
        (cons type-tag contents)))
