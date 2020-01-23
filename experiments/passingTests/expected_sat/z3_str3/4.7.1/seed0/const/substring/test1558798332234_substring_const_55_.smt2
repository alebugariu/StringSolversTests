(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2560 (str.substr "0" (- 1) 0)))
 (= ?x2560 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
