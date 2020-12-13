#lang racket
(display "--------Задание 1--------\n")
(display "Вычисление площади кольца.\n")
(display "Введите данные в одной строке:\n")
(display "Радиус кольца(см\n")
(display "Радиус отверстия(см)\n")

(let func ([rr (read)] [rh (read)])
  (if (> rh rr)
    (display "Ошибка! Радиус отверстия не может быть больше радиуса кольца.\n\n")
    (display (format "Площадь кольца: ~a см. кв\n\n" (- (* 3.14 (* rr rr)) (* 3.14 (* rh rh)))))))


(display "\n--------Задание 3--------\n")
(display "Введите год:\n")
(let func ([year (read)])
  (display (if (= (remainder year 4) 0)
             (format "~a год - високосный." year)
             (format "~a год - не високосный." year))))


(display "\n--------Задание 7--------\n")
(display "В каком году началась вторая мировая война?\n")
(display "Введите число и нажмите <Enter>\n")
(let func ([war (read)])
  (display (if (= war 1939)
             "Правильно!"
             "Не правильно. Вторая мировая война началась в 1939 г.")))