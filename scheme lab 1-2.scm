(define power
	(lambda L  
		(cond
			((null? L)         1			)
			(#t             (expt (car L) (apply power (cdr L)))   )
		)
	)
)


(define power
	(lambda L  
		(apply expt L)   
		
	)
)