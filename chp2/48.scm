;;seems the recent few are quite boring
(define (make-segment start end)
    (list start end))

(define (start-segment s)
    (car s))

(define (end-segment s)
    (cadr s))
