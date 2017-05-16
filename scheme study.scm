(define add
	(lambda(N L)
		(cond
			((null? L)    '()    )
			(#t       (cons (+ N (car L)) (add N (cdr L) ))    )
		)
	)
)

(define cumulative
	(lambda (L)
		(cond
			((null? L)   '()  )
			(#t   (cons (car L) (add (car L) (cumulative (cdr L)))) )
		)
	)
)