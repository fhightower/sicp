(define (make-segment start-point end-point)
  (cons start-point end-point))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

; this is a simple implementation taking only two arguments - but this will suffice for our use-cases
(define (avg a b)
  (/ (+ a b) 2))

(define (segment-midpoint segment)
  (make-point (avg
               (x-point (start-segment segment))
               (x-point (end-segment segment))
              )
              (avg
               (y-point (start-segment segment))
               (y-point (end-segment segment))
              )))

(define (make-point x y)
  (cons x y))

(define (point-equal? point-a point-b)
  (and (= (x-point point-a) (x-point point-b)) (= (y-point point-a) (y-point point-b))))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

; tests

(define test-segment (make-segment (make-point 0 1) (make-point 1 2)))
(point-equal? (start-segment test-segment) (make-point 0 1))
(point-equal? (end-segment test-segment) (make-point 1 2))

(define test-point (make-point 1 2))
(= (x-point test-point) 1)
(= (y-point test-point) 2)

(define test-segment (make-segment (make-point 0 0) (make-point 2 2)))
(point-equal? (segment-midpoint test-segment) (make-point 1 1))
