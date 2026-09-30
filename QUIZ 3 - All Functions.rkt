;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |QUIZ 3 CONTRIBUTION|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp")) #f)))
;; string string string string -> DNA
;; Purpose: Create a DNA structure with four bases, each being a single character "A" "T" "C" or "G"
(define-struct DNA (base1 base2 base3 base4))

;; Sample instance of DNA
(define sampleDNA1 (make-DNA "A" "C" "T" "G" ))

(define sample1 
 (make-DNA
  (find-complement(base1 DNA1)) ;auxilary function needed
  (find-complement(base1 DNA1))
  (find-complement(base1 DNA1))
  (find-complement(base1 DNA1))
  ))
  

;; string -> string
;; Purpose: Take in a string for the base and return its complementary base depending on the following rules:
;;          C <--> G
;;          A <--> T

(define (find-complement base)
  ( cond
     [(string=? base "A") "T"]
     [(string=? base "T") "A"]
     [(string=? base "G") "C"]
     [(string=? base "C") "G"]
  ))

;; Sample expressions for find-complement

(define sample-find-complement1 ;; this might need to change
  ( cond
     [(string=? "A" "T") "A"]
     [(string=? "A" "C") "G"]
     [(string=? "A" "G") "C"]
     [else "T"]

   )
  )

  (define sample-find-complement2 ;; this might need to change
  ( cond
     [(string=? "G" "T") "A"]
     [(string=? "G" "C") "G"]
     [(string=? "G" "G") "C"]
     [else "T"]

   )
  )

;; Tests using sample computations for find-complement


;; Tests using sample values for find-complement

;; DNA -> DNA
;; Purpose: create the reverse complement of a DNA sequence
(define (reverse-DNA d)
  (make-DNA
   (find-complement (DNA-base4 d))
   (find-complement (DNA-base3 d))
   (find-complement (DNA-base2 d))
   (find-complement (DNA-base1 d))))

;; Sample expressions for reverse-DNA

;; Tests using sample computations for reverse-DNA


;; Tests using sample values for reverse-DNA