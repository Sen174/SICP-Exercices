(define (average a b)
  (/ (+ a b) 2)
)

(define (abs x)
  (if (> x 0)
    x
    (- x)
  )
)

(define (sqrt x)

  (define (improve guess x)
    (average guess (/ x guess))
  )

  (define (good-enough? guess next-guess)
    (< (abs (- guess next-guess)) (* guess 0.000000000001))
  )

  (define (sqrt-iter x guess)
    (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter x (improve guess x))
    )
  )

  (sqrt-iter x 1)
)

(sqrt 9)
