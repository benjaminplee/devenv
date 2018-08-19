(define x 100)
(define (square x) (* x x))
(square x)

(define (sum-of-squares x y)
  (+ (square x) (square y)))
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)

