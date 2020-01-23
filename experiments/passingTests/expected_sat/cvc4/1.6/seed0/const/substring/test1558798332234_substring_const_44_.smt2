(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1481 (str.substr "\n" 2 2)))
 (= ?x1481 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
