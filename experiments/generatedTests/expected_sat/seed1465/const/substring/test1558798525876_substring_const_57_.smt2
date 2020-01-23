(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1569 (str.substr "0" 0 (- 1))))
 (= ?x1569 "")))
(check-sat)

(get-info :reason-unknown)



