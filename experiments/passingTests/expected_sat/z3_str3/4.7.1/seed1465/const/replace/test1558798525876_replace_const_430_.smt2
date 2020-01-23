(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x65 (str.replace "0" "-1" "0")))
 (= ?x65 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
