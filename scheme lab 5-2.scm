(define positions
	(lambda (N A L) 
		(cond 
			((null? L)                         '()       			       	       )
			((equal? A (car L))          (cons N (positions (+ N 1) A (cdr L)))    )
			(#t                          (positions (+ N 1) A (cdr L))      	   )
		)
	)
)



Returns List with position numbers of occurences of A
