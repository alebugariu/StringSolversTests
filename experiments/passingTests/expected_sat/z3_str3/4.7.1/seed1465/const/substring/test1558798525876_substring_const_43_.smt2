(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x442 (str.substr "\n" 2 0)))
 (= ?x442 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
