(define (tree-map f tree)
   (map (lambda (g)
              (if (pair? g)
                  (tree-map f g)
                  (f g)))
            tree))
