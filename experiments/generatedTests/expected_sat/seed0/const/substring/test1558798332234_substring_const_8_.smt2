(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x678 (str.substr "" 2 2)))
 (= ?x678 "")))
(check-sat)

(get-info :reason-unknown)



