(define (product term a next b)
  (if (> a b)
    1
    (* (term a)
      (product term (next a) next b)
    )
  )
)

(define (iter-product term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* result (term a)))
    )
  )
  (iter a 1)
)

(define (inc a) (+ a 1))

(define (identity x) x)

(define (factorial a)
  (iter-product identity 1 inc a)
)

(define (pi-product n)

  (define (num-term k)
    (if (even? k)
      (+ k 2)
      (+ k 1)
    )
  )

  (define (den-term k)
    (if (even? k)
      (+ k 1)
      (+ k 2)
    )
  )

  (* 4
    (/ (iter-product num-term 1 inc n)
      (iter-product den-term 1 inc n)
    )
  )
)
