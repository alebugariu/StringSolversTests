(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x190 (str.++ "" "")))
 (= ?x190 "")))
(check-sat)

(get-info :reason-unknown)



