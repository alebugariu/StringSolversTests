(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1293 (str.substr "\n" (- 1) 2)))
 (= ?x1293 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
