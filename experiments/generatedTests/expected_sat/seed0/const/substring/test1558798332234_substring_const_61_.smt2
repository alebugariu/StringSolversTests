(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1765 (str.substr "0" 2 0)))
 (= ?x1765 "")))
(check-sat)

(get-info :reason-unknown)



