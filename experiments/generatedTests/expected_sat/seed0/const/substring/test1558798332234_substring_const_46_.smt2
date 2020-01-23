(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x901 (str.substr "-1" (- 1) 0)))
 (= ?x901 "")))
(check-sat)

(get-info :reason-unknown)



