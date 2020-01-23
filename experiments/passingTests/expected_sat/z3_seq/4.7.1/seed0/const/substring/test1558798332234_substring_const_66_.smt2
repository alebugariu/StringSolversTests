(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2780 (str.substr "2" 0 (- 1))))
 (= ?x2780 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
