(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1003 (str.replace "-1" "-1" "\n")))
 (= ?x1003 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
