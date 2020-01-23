(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x643 (int.to.str (- 1))))
 (= ?x643 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
