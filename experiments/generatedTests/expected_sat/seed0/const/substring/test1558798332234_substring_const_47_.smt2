(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2687 (str.substr "-1" (- 1) 2)))
 (= ?x2687 "")))
(check-sat)

(get-info :reason-unknown)



