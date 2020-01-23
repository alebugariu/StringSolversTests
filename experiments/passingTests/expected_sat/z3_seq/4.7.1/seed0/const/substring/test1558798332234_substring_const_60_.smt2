(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2654 (str.substr "0" 2 (- 1))))
 (= ?x2654 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
