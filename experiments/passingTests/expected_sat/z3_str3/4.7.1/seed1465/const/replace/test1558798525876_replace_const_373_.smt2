(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x483 (str.replace "-1" "0" "-1")))
 (= ?x483 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
