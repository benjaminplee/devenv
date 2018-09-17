(define (p)  (p))

(define (test x y) 
    (if (= x 0) 0 y ))

(test 0 (p))

; expected result with applicative order is infinite loop or error
; due to the fact that the operands will be evalated first and
; p is defined as itself (yay strange loop!)
;
; with normal-order the primitives would be evaluated and possibly
; have the equality check done prior to evaluating p so the loop
; could be avoided
;
; but it probably still depends on definitions of primitives is
