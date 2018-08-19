; Translate to prefix form
; 5 + 4 + (2 - (3 - (6 + 4/5)))
; -----------------------------
;      3 (6 - 2) (2 - 7)

(/ (+ 5 4 (- 2 (- 3 (+ 6 4/5))))
   (* 3 (- 6 2) (- 2 7)))

; value returned is -37/150
;
; value done in calc = -.246666667 which is the same
