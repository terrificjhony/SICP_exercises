(define (make-accumulator tmp)
  (lambda(new)
    (begin
      (set! tmp (+ tmp new))
      tmp)))


(define A (make-accumulator 5))
(A 10)
