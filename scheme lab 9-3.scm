(define chain
	(lambda L  
		(cond
			((null? L)         '()			)
			((integer? (car L))    (car L)         )
			(#t    ((car L) (apply chain (cdr L)))      )
		)
	)
)