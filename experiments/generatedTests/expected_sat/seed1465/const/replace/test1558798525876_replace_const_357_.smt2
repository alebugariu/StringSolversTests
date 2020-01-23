(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1385 (str.replace "-1" "\n" "-1")))
 (= ?x1385 "-1")))
(check-sat)

(get-info :reason-unknown)



