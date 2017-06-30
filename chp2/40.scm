
;;actually the book has defined it,just a little bit tiny change
(define (unique-pairs n)
    (flatmap (lambda (i)
                 (map (lambda (j) (list i j))
                      (enumerate-interval 1 (- i 1))))
             (enumerate-interval 1 n)))


(define (prime-sum-pairs n)
    (map make-pair-sum
         (filter prime-sum? (unique-pairs n))))


;; i:element in BIG
;; j:element in small set

;; j:from 1 to (i - 1)

;; i 1 j:1
;; i 2 j:1 2
;; i 3 j: (1 2 3)
;; i 4 j 1 2 3 4  (i j) (1 4)
