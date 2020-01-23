(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1990 (str.substr "" (- 1) 0)))
 (= ?x1990 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
