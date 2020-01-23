(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2800 (str.replace "-1" "0" "a")))
 (= ?x2800 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
