(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1360 (str.substr "0" 2 (- 1))))
 (= ?x1360 "")))
(check-sat)

(get-info :reason-unknown)



