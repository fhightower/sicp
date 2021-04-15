(define (inc a)
  (+ a 1))

(define (double f)
  (lambda (x) (f (f x))))

((double inc) 1) ;Value: 3
(((double (double double)) inc) 5) ;Value: 21
