(define (improve-func guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
          guess
          (cube-root-iter (improve-func guess x)
                     x)))

(cube-root-iter 4 8)
