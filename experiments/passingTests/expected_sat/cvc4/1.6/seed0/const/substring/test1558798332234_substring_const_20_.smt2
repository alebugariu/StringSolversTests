(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2201 (str.substr "a" (- 1) 2)))
 (= ?x2201 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
