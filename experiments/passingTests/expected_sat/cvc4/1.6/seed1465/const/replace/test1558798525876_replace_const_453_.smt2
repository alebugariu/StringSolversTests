(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1146 (str.replace "2" "" "-1")))
 (= ?x1146 "-12")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
