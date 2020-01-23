(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x143 (str.at "-1" 0)))
 (= ?x143 "-")))
(check-sat)

(get-info :reason-unknown)



