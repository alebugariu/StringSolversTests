(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2158 (str.substr "2" 2 (- 1))))
 (= ?x2158 "")))
(check-sat)

(get-info :reason-unknown)



