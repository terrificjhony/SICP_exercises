 (define (dot-product v w)
   (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
       (map (lambda (col)
	      (dot-product col v)) m))


(define (transpose m)
    (accumulate-n cons '() m))

(define (matrix-*-matrix m n)
    (let ((cols (transpose n)))
        (map (lambda (col-of-m)
                 (map (lambda (col-of-cols)
                          (dot-product col-of-m 
                                       col-of-cols))
                      cols))
             m)))
