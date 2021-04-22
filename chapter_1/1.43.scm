(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated-iter f n x result)
  (if (> n 0)
    (if (= n 1)
      (+ result (f x))
      (repeated-iter f (- n 2) x (+ ((compose f f) x) result)))
    result))

; The function above could also be done using recursion
(define (repeated-recur f n x)
  (if (> n 1)
    (repeated-recur f (- n 1) (f x))
    (f x)))

(define (repeated f n)
  (lambda (x) (repeated-iter f n x 0)))
  ; (lambda (x) (repeated-recur f n x)))

((repeated square 2) 5)
