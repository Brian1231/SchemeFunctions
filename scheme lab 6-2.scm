(define consToAll
	(lambda (A L) 
		(cond 
			((null? L)          			'()    						)
			(#t       (cons (cons A (car L)) (consToAll A (cdr L)))    		       	       )
		)
	)
)

(define powerset
	(lambda (L) 
		(cond 
			((null? L)          	'(()) 						)
			(#t	(append (powerset (cdr L) )	(consToAll (car L) (powerset (cdr L))))									)
		)
	)
)



Returns list of all possible sublists 
e.g:  '(a b) = () (b) (a) (a b)