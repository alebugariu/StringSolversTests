(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2632 (str.substr "-1" 0 (- 1))))
 (= ?x2632 "")))
(check-sat)

(get-info :reason-unknown)



