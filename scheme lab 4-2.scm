(define remove
	(lambda (A L) 
		(cond 
			((null? L)                         '()       				)
			((equal? A (car L))        (remove A (cdr L)     ) 			)
			(    #t      (cons (car L) (remove  A  (cdr L)   ))         )
		)
	)
)



Removes all occurrences of element A from List L