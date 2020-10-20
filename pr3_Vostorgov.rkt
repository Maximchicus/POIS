#lang racket
(display "\n--------Задание 1--------\n")
(define firstList (list 1 1 1 1 1))
(define secondList (list 2 2 2 2 2))
(define (checkFirstArg arg)
  (cond ((and (= (remainder arg 1) 0) (> arg 0)) (list secondList))
  (else (append secondList firstList))))
(display (checkFirstArg (first firstList)))

(display "\n--------Задание 7--------\n")
(define myList (list "test" 3 5 7 9 11 13 15))
(define (perf myList)
(cond ((and (number? (first myList)) (number? (third myList))
(number? (seventh myList)))
(+ (first myList) (third myList) (seventh myList)))
(else (last myList))
)
)
(display (perf myList))

(display "\n--------Задание 13--------\n")
(define a(read))
(define b(read))
(define c(read))
(define (makeList a b c)
( cond ((= (remainder (* a b c) 2) 1)
(list (* a a a) (* b b b) (* c c c))
)
(else (+ a b c))
)
)
(display (makeList a b c))