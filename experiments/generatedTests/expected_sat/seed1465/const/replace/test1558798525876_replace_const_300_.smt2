(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2679 (str.replace "\n" "-1" "\n")))
 (= ?x2679 "\n")))
(check-sat)

(get-info :reason-unknown)



