(define replaceAfter
	(lambda (A X Y L) 
		(cond 
			((null? L)          			'()     			)
			((and (equal? A (car L)) (equal? X (cadr L)) )  
							(cons (car L) (cons Y (replaceAfter A X Y (cddr L))))	)
			(#t  (cons (car L)(replaceAfter A X Y (cdr L))	)				)
		)
	)
)

