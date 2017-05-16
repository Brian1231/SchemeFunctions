
(define minKey
	(lambda (key L)  
		(cond
			((null? (cdr L))         (car L)			)
			((<= (key (car L)) (key (minKey key (cdr L))))    (car L)        )
			(#t    (minKey key (cdr L))      )
		)
	)
)



