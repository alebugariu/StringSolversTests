(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2653 (str.substr "" 2 0)))
 (= ?x2653 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
