;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
#|
Exercise 6. Use the picture primitives to create the image of a simple automobile.
|#

 (underlay/align/offset
   "right" "bottom"
   (underlay/align/offset
    "left" "bottom"
     (underlay/align/offset
      "left" "top"
      (rectangle 200 100 "solid" "darkgreen")
      0 -50
      (ellipse 200 100 "solid" "yellow"))
    0 50
    (circle 30 "solid" "black"))
   0 0
   (circle 30 "solid" "black"))