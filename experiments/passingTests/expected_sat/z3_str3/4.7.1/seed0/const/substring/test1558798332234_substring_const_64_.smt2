(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1616 (str.substr "2" (- 1) 0)))
 (= ?x1616 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
