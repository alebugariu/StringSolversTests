(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x297 (str.substr "-1" (- 1) 0)))
 (= ?x297 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
