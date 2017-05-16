(define changingFractions
	(lambda (X Y) 
		(
			cond 
				( (= X 0)                 0                                 )
				( (= Y 0)                 0                                 )
				( (> X 0) (+ (/ X Y) (changingFractions (- X 1)(- Y 1)))    )
				( (> Y 0) (+ (/ X Y) (changingFractions (- X 1)(- Y 1)))    )
		)
	)
)


//Returns X/Y   +     X-1/Y-1     +      X-2/Y-2     Till X = 0 OR  Y = 0