(define consToAll
	(lambda (A L) 
		(cond 
			((null? L)          			'()    						)
			(#t       (cons (cons A (car L)) (consToAll A (cdr L)))    		       	       )
		)
	)
)



Adds A to all sublists in L