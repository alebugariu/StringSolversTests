(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x649 (str.substr "2" 0 0)))
 (= ?x649 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
