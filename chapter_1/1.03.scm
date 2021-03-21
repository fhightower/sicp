(define (square a)
    (* a a)
)

(define (sum-of-squares a b)
    (+ (square a) (square b)))

(define (f a b c func)
    (if (> a b)
        (if (> b c)
            (func a b)
            (func a c))
        (if (> a c)
            (func a b)
            (func b c))
    )
)

(=
    (f 1 2 3 sum-of-squares)
    (f 2 3 1 sum-of-squares)
    (f 3 1 2 sum-of-squares)
    (f 1 3 2 sum-of-squares)
    (f 3 2 1 sum-of-squares)
    (f 2 1 3 sum-of-squares)
)

; Initially, I defined `f` as: (define (f a b c) ... ), but decided to add the `func` argument to make f more generic
