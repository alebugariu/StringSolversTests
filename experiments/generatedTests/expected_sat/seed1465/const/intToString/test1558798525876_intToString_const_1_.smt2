(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x649 (int.to.str 0)))
 (= ?x649 "0")))
(check-sat)

(get-info :reason-unknown)



