(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2775 (str.substr "-1" (- 1) (- 1))))
 (= ?x2775 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
