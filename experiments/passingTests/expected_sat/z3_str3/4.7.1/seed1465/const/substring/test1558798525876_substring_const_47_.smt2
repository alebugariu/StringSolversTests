(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2276 (str.substr "-1" (- 1) 2)))
 (= ?x2276 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
