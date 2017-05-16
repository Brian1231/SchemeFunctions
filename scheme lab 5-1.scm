(define flatten
	(lambda (L) 
		(cond 
			((null? L)                         '()       			       	     )
  			((list? (car L))      (append (flatten (car L)) (flatten (cdr L))    ))
            (#t                (cons (car L) (flatten (cdr L)))       		 )

		)
	)
)



Puts all elments into 1 list ( no sublists )
(define test '(1 2 (1 2 3 4) 3 4 (1 2 3) 5 6 7))