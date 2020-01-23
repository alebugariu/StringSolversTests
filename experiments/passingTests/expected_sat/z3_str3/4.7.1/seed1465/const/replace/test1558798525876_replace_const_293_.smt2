(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2637 (str.replace "\n" "\n" "-1")))
 (= ?x2637 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
