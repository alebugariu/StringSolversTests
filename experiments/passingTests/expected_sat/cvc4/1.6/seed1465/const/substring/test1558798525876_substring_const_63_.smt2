(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1245 (str.substr "2" (- 1) (- 1))))
 (= ?x1245 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
