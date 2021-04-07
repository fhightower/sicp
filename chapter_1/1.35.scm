; Showing φ is fixed point of f(x) = 1 + 1/x:
; By definition: φ^2 = φ + 1
; If φ is a fixed point of f(x), by definition: f(φ) = 1 + 1/φ = φ
; If we multiply each section of 1 + 1/φ = φ by φ, we get: φ + 1 = φ^2 (which is the same as the definition for φ)
; Therefore, φ is a fixed point of f(x) = 1 + 1/x

; Code using our fixed-point function to estimate φ:

(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (f x)
  (+ 1 (/ 1 x)))

(fixed-point f 1.5) ;Value: 1.6180327868852458
