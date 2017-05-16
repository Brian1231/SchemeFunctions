(define replaceLast
	(lambda (X Y L) 
		(cond 
			((null? L)          			'()     			)
			( (and (and (equal? X (car L)) (member X L)) (not (member X (cdr L))))		(cons Y (cdr L)))
			((member X L)			(cons (car L) (replaceLast X Y (cdr L))))
							
			(#t 	(cons Y (replaceLast X Y (cdr L)))   	)
		)
	)
	
)



