;;the opertion should change the initial form nil to (list)
(define (square-list items)
            (define (iter things answer)
              (if (null? things)
                  answer
                  (iter (cdr things)
                        (append answer
                              (list (square (car things)))))))
            (iter items (list))))


(define a (square-list (list 1 2 3 4)))

;;resaon: the operation cons is for pairs,while append is for lists.
