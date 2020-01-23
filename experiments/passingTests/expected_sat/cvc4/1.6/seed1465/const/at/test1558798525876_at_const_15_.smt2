(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x137 (str.at "-1" (- 1))))
 (= ?x137 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
