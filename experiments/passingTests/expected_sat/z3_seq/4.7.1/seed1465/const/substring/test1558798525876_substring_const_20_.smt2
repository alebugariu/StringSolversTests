(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x586 (str.substr "a" (- 1) 2)))
 (= ?x586 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
