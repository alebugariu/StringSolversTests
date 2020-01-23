(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1538 (str.substr "0" 0 0)))
 (= ?x1538 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
