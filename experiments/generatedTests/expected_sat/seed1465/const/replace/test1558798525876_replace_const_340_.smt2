(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2730 (str.replace "-1" "a" "\n")))
 (= ?x2730 "-1")))
(check-sat)

(get-info :reason-unknown)



