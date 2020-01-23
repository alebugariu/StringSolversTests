(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1742 (str.substr "-1" 2 2)))
 (= ?x1742 "")))
(check-sat)

(get-info :reason-unknown)



