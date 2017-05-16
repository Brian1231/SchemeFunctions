(define average
	(lambda L  
			(/ 
				(apply  +  L)
				(length L)
			)
	)
)




(define addsSquares
	(lambda L 
		(apply 
			+
			(map
				(lambda (X)
					(* X X)
				)
				L
			)
		)
	)
)