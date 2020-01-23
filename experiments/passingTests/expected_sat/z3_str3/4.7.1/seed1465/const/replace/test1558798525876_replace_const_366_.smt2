(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1149 (str.replace "-1" "-1" "0")))
 (= ?x1149 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
