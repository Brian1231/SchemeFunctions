(define replaceFirst
	(lambda (X Y L) 
		(cond 
			((null? L)          			'()    )
			((equal? X (car L))          	(cons Y (cdr L))    )
			(#t         		       	    (cons (car L)  (replaceFirst X Y (cdr L)) )   )
		)
	)
)