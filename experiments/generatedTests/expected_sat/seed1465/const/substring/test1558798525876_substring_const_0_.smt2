(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1050 (str.substr "" (- 1) (- 1))))
 (= ?x1050 "")))
(check-sat)

(get-info :reason-unknown)



