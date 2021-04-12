(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (newline)
    (display v1)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (f x)
  (/ (log 1000) (log x)))

(fixed-point f 1) ; fails b/c log(1) = 0 causing division by zero
(fixed-point f 10) ;Value: 4.555532257016376
