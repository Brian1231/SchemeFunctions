(define removeFirst
	(lambda (A L) 
		(cond 
			((null? L)                     '()       				     )
			((equal? A (car L))       (cdr L)      						 )
			(    #t      (cons (car L) (removeFirst  A  (cdr L)   ))     )
		)
	)
)




Removes First occurence of element A from List L.