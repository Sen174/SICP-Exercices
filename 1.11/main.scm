(define (recursive-f n)
  (if (< n 3)
    n
    (+ (recursive-f (- n 1)) 
      (* 2 (recursive-f (- n 2))) 
      (* 3 (recursive-f (- n 3)))
    )
  )
)

(define (iterative-f n)
  (define (f-iter n n-1 n-2 n-3 counter)
    (if (> counter n)
      n-1
      (f-iter n (+ n-1 (* 2 n-2) (* 3 n-3)) n-1 n-2 (+ counter 1))
    )
  )

  (if (< n 3)
    n
    (f-iter n 2 1 0 3)
  )
)
