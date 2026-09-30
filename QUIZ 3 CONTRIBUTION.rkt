;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |QUIZ 3 CONTRIBUTION|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp")) #f)))
;;the struct DNA takes 4 strings, each representing a single charecter. each charecter should only be the letter A T C or G, and they should be uppercase
(define-struct DNA (str1 str2 str3 str4))

(define sampleDNA1 (make-DNA "A" "C" "T" "G" ))

(define (findComplement x)
  ( cond
     [(string=? x "T") "A"]
     [(string=? x "C") "G"]
     [(string=? x "G") "C"]
     [else "T"]

   )
  )

(define DNA1 (make-DNA "A" "C" "T" "G"))
(define sample1 
  (make-DNA
  (findComplement(DNA-str1 DNA1)) ;auxilary function needed
  (findComplement(DNA-str2 DNA1))
  (findComplement(DNA-str3 DNA1))
  (findComplement(DNA-str4 DNA1))
  )

  )
                 
  

;;samples for findComplement

(define sampleFindComplement1
  ( cond
     [(string=? "A" "T") "A"]
     [(string=? "A" "C") "G"]
     [(string=? "A" "G") "C"]
     [else "T"]

   )
  )

  (define sampleFindComplement2
  ( cond
     [(string=? "G" "T") "A"]
     [(string=? "G" "C") "G"]
     [(string=? "G" "G") "C"]
     [else "T"]

   )
    )

;; the difference between the two samples is the first charecter