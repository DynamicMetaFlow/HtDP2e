;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;Exercise 7. Use the picture primitives to create the image of a simple boat

(overlay/offset
   (overlay/offset (rotate -90 (isosceles-triangle 100 30 'solid 'yellow))
                   -40 150
                   (rectangle 150 40 'solid 'lightblue))
   0 -10
   (rotate 90 (rectangle 150 20 'solid 'gray)))