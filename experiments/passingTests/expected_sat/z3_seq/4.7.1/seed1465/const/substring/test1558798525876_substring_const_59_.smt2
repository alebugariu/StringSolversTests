(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1350 (str.substr "0" 0 2)))
 (= ?x1350 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
