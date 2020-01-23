(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x25 (str.substr "" 2 (- 1))))
 (= ?x25 "")))
(check-sat)

(get-info :reason-unknown)



