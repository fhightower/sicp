(define (p) (p))

(define (test x y)
    (if (= x 0) 0 y)
)

(test 0 (p))

; I believe that in a normal-order evaluation, this will hang as (p) will keep calling itself
; In applicative-order evaluation, this would return 0 because it evauluates (= x 0), finds it true, and returns 0
