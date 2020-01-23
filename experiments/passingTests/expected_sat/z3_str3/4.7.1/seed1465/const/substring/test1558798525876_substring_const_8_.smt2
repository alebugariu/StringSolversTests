(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2608 (str.substr "" 2 2)))
 (= ?x2608 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
