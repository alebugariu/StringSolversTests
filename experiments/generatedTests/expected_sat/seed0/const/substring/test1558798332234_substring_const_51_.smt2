(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2280 (str.substr "-1" 2 (- 1))))
 (= ?x2280 "")))
(check-sat)

(get-info :reason-unknown)



