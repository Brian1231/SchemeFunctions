(define getElement
	(lambda (N L) 
		(cond 
			( (= N 1)              (car L)            )
			( #t          (getElement (- N 1) (cdr L)))
		)
	)
)