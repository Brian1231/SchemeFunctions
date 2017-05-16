(define remove
	(lambda (A L) 
		(cond 
			((null? L)                     '()       				    )
			((equal? A (car L))       (remove A (cdr L)     ) 			)
			(    #t      (cons (car L) (remove  A  (cdr L)   ))         )
		)
	)
)



(define removeAll
	(lambda (A L) 
		(cond 
			((null? L)                  	 '()       				     								         )
			((list? (car L))              (cons    (remove A (car L))        (removeAll A (cdr L)) 		)		 )
			((equal? A (car L))           (removeAll A (cdr L)     ) 			  							     )
			(    #t                       (cons (car L) (removeAll  A  (cdr L)   ))    							 )
		)
	)
)


Removes all occurrences of element A from List L, including sublists of L. E.g:
(removeAll 1 (1 2 3 ( 2 1 3) 3 1))  ------>   (2 3 (2 3) 3)