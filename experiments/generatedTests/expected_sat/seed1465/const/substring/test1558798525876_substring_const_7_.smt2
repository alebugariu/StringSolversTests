(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1630 (str.substr "" 2 0)))
 (= ?x1630 "")))
(check-sat)

(get-info :reason-unknown)



