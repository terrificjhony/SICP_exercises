(define (unique-pairs n)
    (flatmap (lambda (i)
                 (map (lambda (j) (list i j))
                      (enumerate-interval 1 (- i 1))))
             (enumerate-interval 1 n)))

(define (unique-triples n)
    (flatmap (lambda (i)
                 (map (lambda (j) (cons i j))
		      (unique-pairs (- i 1))))
		      (enumerate-interval 1 n)))

(define (triple-sum-equal-to? sum triple)
    (= sum
       (+ (car triple)
          (cadr triple)
          (caddr triple))))

(define (remove-triples-not-equal-to sum triple)
    (filter (lambda (current-triple)
                (triple-sum-equal-to? sum current-triple))
            triple))

(define i (remove-triples-not-equal-to 8 (unique-triples 4)))

