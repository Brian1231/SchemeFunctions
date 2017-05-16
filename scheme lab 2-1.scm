(define sum
	(lambda (X) 
		(cond 
			( (null? X)                       0          )
			(   #t          (+ (car X) (sum (cdr X)))    )
		)
	)
)
