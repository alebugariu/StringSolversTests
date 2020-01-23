(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2719 (str.replace "\n" "0" "-1")))
 (= ?x2719 "\n")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
