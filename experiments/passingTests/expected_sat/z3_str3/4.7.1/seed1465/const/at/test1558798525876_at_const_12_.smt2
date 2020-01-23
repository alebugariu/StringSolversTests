(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x121 (str.at "\n" (- 1))))
 (= ?x121 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
