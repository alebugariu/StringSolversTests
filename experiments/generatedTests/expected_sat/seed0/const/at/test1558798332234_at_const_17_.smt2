(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x148 (str.at "-1" 2)))
 (= ?x148 "")))
(check-sat)

(get-info :reason-unknown)



