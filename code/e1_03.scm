(define (square x) (* x x))
(define (sumSquare x y) (+ (square x) (square y)))

(define (oneThree x y z) 
  (cond
    ((and (> x z) (> y z)) (sumSquare x y))
    ((and (> x y) (> z y)) (sumSquare x z))
    ((and (> y x) (> y x)) (sumSquare y z))
    )
  )

(oneThree 5 6 1)
(oneThree 6 5 1)
(oneThree 5 1 6)
(oneThree 6 1 5)
(oneThree 1 5 6)
(oneThree 1 6 5)
