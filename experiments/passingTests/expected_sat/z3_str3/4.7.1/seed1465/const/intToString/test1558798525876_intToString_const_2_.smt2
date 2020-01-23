(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x653 (int.to.str 2)))
 (= ?x653 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
