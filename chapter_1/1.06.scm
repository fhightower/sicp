(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(sqrt-iter 4 9)

; empirically, the program hangs

; the infinite loop is caused because the else-clause of new-if is evaluated before the predicate is run...
; because the else-clause is (sqrt-iter (improve guess x) x), sqrt-iter keeps calling new-if which keeps calling sqrt-iter ad naseum
