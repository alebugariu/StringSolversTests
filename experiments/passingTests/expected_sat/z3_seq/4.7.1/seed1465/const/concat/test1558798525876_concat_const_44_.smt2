(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x505 (str.++ "-1" "\n")))
 (= ?x505 "-1\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
