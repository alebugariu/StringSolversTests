(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1149 (str.replace "-1" "\n" "-1")))
 (= ?x1149 "-1")))
(check-sat)

(get-info :reason-unknown)



