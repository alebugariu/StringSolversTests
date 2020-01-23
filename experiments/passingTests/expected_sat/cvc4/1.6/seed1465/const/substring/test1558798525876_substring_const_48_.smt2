(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x480 (str.substr "-1" 0 (- 1))))
 (= ?x480 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
