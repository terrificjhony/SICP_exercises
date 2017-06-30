(define (or-gate a1 a2 output)
  (let ((b1 (make-wire))
	(b2 (make-wire))
    	(c1 (make-wire))
    (inverter a1 b1)
    (inverter a2 b2)
    (and-gate b1 b2 c1)
    (inverter c1 output))))


;;;delay = 3 * inverter-delay + and-gate-delay
