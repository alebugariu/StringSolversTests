(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2759 (str.replace "\n" "2" "0")))
 (= ?x2759 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
