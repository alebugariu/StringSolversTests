(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2521 (str.replace "0" "2" "-1")))
 (= ?x2521 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
