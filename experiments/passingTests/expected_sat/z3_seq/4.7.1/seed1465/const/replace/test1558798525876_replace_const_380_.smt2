(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2340 (str.replace "-1" "2" "\n")))
 (= ?x2340 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
