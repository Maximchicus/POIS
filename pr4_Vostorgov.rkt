#lang racket

(display "\n--------Задание 2--------\n")
(define (rev lst)
  (if ( < 1 (length lst))
      (append (reverse lst) (rev (cdr lst)))
      lst)
 )
(rev (list 4 3 2 1))

(display "\n--------Задание 5--------\n")
(display "Введите список в скобках и нажмите <Enter>\n")
(define lst2 (read))
(define (multiply lst2)
  (cond ((null? lst2) '())
        (true (cons (apply * lst2) (multiply (cdr lst2))))))
(multiply lst2)

(display "\n--------Задание 6--------\n")
(display "Введите список в скобках и нажмите <Enter>\n")
(define lst (read))
(display "Введите объект и нажмите <Enter>\n")
(define x (read))
(display "Введите необходимую позицию (с нуля) и нажмите <Enter>\n")
(define n (read))
(define (insert lst x n) 
  (cond 
    ((= 0 n) (cons x lst)) 
    (true (cons (car lst) (insert (cdr lst) x (- n 1))))))
(insert lst x n) 