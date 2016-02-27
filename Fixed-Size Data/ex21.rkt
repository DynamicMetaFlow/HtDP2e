;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex21) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "extras.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "extras.rkt" "installed-teachpacks")) #f)))
(require rackunit)

#|
Exercise 21. Define the function string-insert, which consumes a string and a number i and which inserts "_" at the ith position of the string. Assume i is a number between 0 and the length of the given string (inclusive). See exercise 3 for ideas. Also ponder the question how string-insert ought to cope with empty strings.
|#



(begin-for-test
  (check-equal? (string-insert "alex" 1)
                "a_lex"
                "inserting into abcd at position 1 should return a_lex")
  (check-equal? (string-insert "" 0)
                "_"
                "inserting into empty string at position 0 should return _"))
(define (string-insert str i)
  (string-append (substring str 0 i) "_"
                 (substring str i (string-length str))))