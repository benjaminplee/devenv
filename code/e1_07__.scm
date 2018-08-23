(define (average x y) (/ (+ x y) 2))
(define (improve guess x) (average guess (/ x guess)))
(define (good-enough1? guess x) (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter1 guess x)
  (if (good-enough1? guess x)
    guess
    (sqrt-iter1 (improve guess x) x)))

(define (sqrt1 x)
    (sqrt-iter1 1.0 x))

; Demonstrate problem
(define x 0.001)
(define good (sqrt x))
(define bad (sqrt1 x))
(/ (abs (- good bad)) good) 

(define x 1000000000000000)
(define good (sqrt x))
(define bad (sqrt1 x))
(/ (abs (- good bad)) good) 

;;;;; Not quite sure about this one
;;; Calculating too big squares can overflow?
;;; Take too long to get down to that precision?

; Better impl and test run
(define (good-enough2? guess last-guess)
  (< (/ (abs (- guess last-guess)) guess) 0.01))
(define (sqrt-iter2 guess last-guess x)
  (if (good-enough2? guess x)
    guess
    (sqrt-iter2 (improve guess x) guess x)))

(define (sqrt2 x)
    (sqrt-iter2 1.0 10.0 x))

(define x 0.001)
(define good (sqrt x))
(define bad (sqrt2 x))
(/ (abs (- good bad)) good) 

(define x 1000000000000000)
(define good (sqrt x))
(define bad (sqrt2 x))
(/ (abs (- good bad)) good) 



