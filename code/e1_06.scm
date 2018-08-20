; Since we evaluate in applicative-order, both operands will be
; evaluated before working through the (cond) so we will infinitely
; try to improve guesses and recurse into sqrt-iter

; Common functions
(define (improve guess x) (average guess (/ x guess)))
(define (average x y) (/ (+ x y) 2))
(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))

; Original w/ IF
(define (sqrt-iter1 guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter1 (improve guess x) x)))

(define (sqrt1 x)
    (sqrt-iter1 1.0 x))

; Alternate
(define (new-if predicate 
		then-clause 
		else-clause)
  (cond (predicate then-clause)
	(else else-clause)))
(define (sqrt-iter2 guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter2 (improve guess x) x)))
(define (sqrt2 x)
  (sqrt-iter2 1.0 x))



