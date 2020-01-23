(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2671 (str.replace "\n" "-1" "a")))
 (= ?x2671 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
