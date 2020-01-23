(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x399 (str.replace "-1" "\n" "\n")))
 (= ?x399 "-1")))
(check-sat)

(get-info :reason-unknown)



