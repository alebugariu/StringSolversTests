(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x921 (str.substr "a" (- 1) 0)))
 (= ?x921 "")))
(check-sat)

(get-info :reason-unknown)



