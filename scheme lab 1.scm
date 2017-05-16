(define reciprocals 
	(lambda (N) 
		(
			cond 	
				( (> N 1) (+ (/ 1 N)(reciprocals (- N 1))))
				( (= N 1)   1)				
		)
	)
)

