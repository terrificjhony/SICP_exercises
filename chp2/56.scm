(define (make-exponentiation base exponent)                         ; 新增
    (cond ((= exponent 0)                                           ;
            1)                                                      ;
          ((= exponent 1)                                           ;
            base)                                                   ;
          (else                                                     ;
            (list '** base exponent))))                             ;
                                                                    ;
(define (exponentiation? x)                                         ;
    (and (pair? x)                                                  ;
        (eq? (car x) '**)))                                         ;
                                                                    ;
(define (base exp)                                                  ;
    (cadr exp))                                                     ;
                                                                    ;
(define (exponent exp)                                              ;
    (caddr exp))                                                    ;


((exponentiation? exp)                                    ; 新增
            (let ((n (exponent exp))                                ;
                  (u (base exp)))                                   ;
                (make-product                                       ;
                    n                                               ;
                    (make-product                                   ;
                        (make-exponentiation                        ;
                            u                                       ;
                            (- n 1))                                ;
                        (deriv u var)))))   
