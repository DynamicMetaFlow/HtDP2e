;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex22) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "extras.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "extras.rkt" "installed-teachpacks")) #f)))
#|
Exercise 22. Define the function string-delete, which consumes a string and a number i and which deletes the ith position from str. Assume i is a number between 0 (inclusive) and the length of the given string (exclusive).
|#

(require rackunit)

(begin-for-test
  (check-equal? (string-delete "alex" 1)
                "aex"
                "inserting into abcd at position 1 should return a_lex"))

(define (string-delete str i)
  (string-append (substring str 0 i)
                 (substring str (+ 1 i) (string-length str))))