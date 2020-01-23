(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x36 (str.substr "0" (- 1) (- 1))))
 (= ?x36 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
