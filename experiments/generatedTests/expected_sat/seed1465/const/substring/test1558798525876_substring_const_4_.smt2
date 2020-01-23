(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2384 (str.substr "" 0 0)))
 (= ?x2384 "")))
(check-sat)

(get-info :reason-unknown)



