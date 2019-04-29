(define (pascal x y)
  (if (or (= x 0) (= y 0))
    1
    (+ (pascal (- x 1) y) (pascal x (- y 1)))
  )
)
