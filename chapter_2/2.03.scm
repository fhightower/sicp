; Exercise 2.3: Implement a representation for rectangles in a plane. (Hint: You may want to make use of Exercise 2.2.) In terms of your constructors and selectors, create procedures that compute the perimeter and the area of a given rectangle. Now implement a different representation for rectangles. Can you design your system with suitable abstraction barriers, so that the same perimeter and area procedures will work using either representation?

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

(define (rectangle x1 y1 x2 y2)
  (cons
    (make-segment (make-point x1 y1) (make-point x1 y2))
    (make-segment (make-point x1 y2) (make-point x2 y2))
    (make-segment (make-point x2 y2) (make-point x2 y1))
    (make-segment (make-point x2 y1) (make-point x1 y1))))
