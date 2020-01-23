(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2802 (str.replace "-1" "0" "\n")))
 (= ?x2802 "-1")))
(check-sat)

(get-info :reason-unknown)



