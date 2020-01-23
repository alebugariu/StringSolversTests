(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2662 (str.replace "\n" "-1" "")))
 (= ?x2662 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
