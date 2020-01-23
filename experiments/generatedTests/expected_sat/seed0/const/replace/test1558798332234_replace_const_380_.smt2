(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x447 (str.replace "-1" "2" "\n")))
 (= ?x447 "-1")))
(check-sat)

(get-info :reason-unknown)



