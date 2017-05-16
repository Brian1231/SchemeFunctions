(define everySecond
	(lambda (L) 
		(cond 
			( (null? L)              '()            )
			( (null? (cdr L))          L            ) 
			( #t    (append (list(car L)) (everySecond   (cdr (cdr L))    )))
		)
	)
)