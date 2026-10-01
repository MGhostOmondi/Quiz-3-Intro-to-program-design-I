#lang htdp/bsl

;; A nucleotide is either:
;; 1. "A"
;; 2. "T"
;; 3. "G"
;; 4. "C"
(define A "A")
(define T "T")
(define C "C")
(define G "G")

;; nucleotide -> nucleotide
;; Purpose:To find the complement of the given nucleotide:
;; A->T
;; T->A
;; C->G
;; G->C
(define (find-complement x)
  (cond
     [(string=? x  T) A]
     [(string=? x  C) G]
     [(string=? x  G) C]
     [else "T"]))

;; sample expressions for find-complement
(define COMPLEMENT-A T)
(define COMPLEMENT-T A)
(define COMPLEMENT-C G)
(define COMPLEMENT-G C)

;; Tests for find-complement using sample values
(check-expect (find-complement  A ) T )
(check-expect (find-complement  T ) A )
(check-expect (find-complement  C ) G )
(check-expect (find-complement  G ) C )

;; Tests for find-complement using sample expressions 
(check-expect (find-complement A) COMPLEMENT-A)
(check-expect (find-complement T) COMPLEMENT-T)
(check-expect (find-complement C) COMPLEMENT-C)
(check-expect (find-complement G) COMPLEMENT-G)
      
;; A DNA sequence is a structure: (make-DNA nucleotide nucleotide nucleotide nucleotide symbol)
(define-struct DNA (str1 str2 str3 str4 species))

(define sampleDNA1 (make-DNA "A" "C" "T" "G" 'dog))

;; reverseDNA: DNA sequence->DNA sequence
;; Purpose: To reverse the given DNA sequence

(define (reverse-DNA a-DNA)
 (make-DNA
   (find-complement(DNA-str4 a-DNA))
   (find-complement(DNA-str3 a-DNA))
   (find-complement(DNA-str2 a-DNA))
   (find-complement(DNA-str1 a-DNA))
   (DNA-species a-DNA)))

 
(define DNA2 (make-DNA C T A G 'dog))
  (define sample2
    (make-DNA
     (find-complement(DNA-str4 DNA2))
     (find-complement(DNA-str3 DNA2))
     (find-complement(DNA-str2 DNA2))
     (find-complement(DNA-str1 DNA2))
     (DNA-species DNA2)))  



  
(define DNA1 (make-DNA "A" "C" "T" "G" 'dog))
(define sample1 
  (make-DNA
   (find-complement(DNA-str4 DNA1)) 
   (find-complement(DNA-str3 DNA1))
   (find-complement(DNA-str2 DNA1))
   (find-complement(DNA-str1 DNA1))
   (DNA-species DNA1)))

;; Tests for reverse DNA using sample expressions
(check-expect (reverse-DNA DNA1 ) sample1)
(check-expect (reverse-DNA DNA2 ) sample2)
;; Tests for reverse DNA using sample values
(check-expect (reverse-DNA (make-DNA A C T G 'dog)) (make-DNA C A G T 'dog))
(check-expect (reverse-DNA (make-DNA C T A G 'dog)) (make-DNA C T A G 'dog))

