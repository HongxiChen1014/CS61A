(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cdr (cdr s)))
)


(define (sign num)
  (cond ((< num 0) -1)
        ((> num 0) 1)
        (else 0))
)


(define (square x) (* x x))

(define (pow x y)
  (cond ((equal? y 0) 1)
        ((odd? y) (* (pow x (- y 1)) x))
        (else (square(pow x (/ y 2))))
  )
)

