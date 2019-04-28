(define (cbrt x)

  (define (improve guess x)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3)
  )

  (define (good-enough? guess next-guess)
    (< (abs (- guess next-guess)) (* guess 0.000000000001))
  )

  (define (cbrt-iter x guess)
    (if (good-enough? guess (improve guess x))
      guess
      (cbrt-iter x (improve guess x))
    )
  )

  (cbrt-iter x 1)
)

(cbrt 8)
