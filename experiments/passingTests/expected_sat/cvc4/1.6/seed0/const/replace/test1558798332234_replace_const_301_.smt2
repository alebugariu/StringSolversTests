(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2683 (str.replace "\n" "-1" "-1")))
 (= ?x2683 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
