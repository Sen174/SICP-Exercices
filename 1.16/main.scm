(define (iter-exp b n)
  ;; ab^k = b^n
  (define (exp-iter a b k)
    (cond 
      ((= k 0) a)
      ((even? k) (exp-iter a (* b b) (/ k 2)))
      (else (exp-iter (* a b) b (- k 1)))
    )
  )

  (exp-iter 1 b n)
)
