(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1092 (str.substr "a" (- 1) 0)))
 (= ?x1092 "")))
(check-sat)

(get-info :reason-unknown)



