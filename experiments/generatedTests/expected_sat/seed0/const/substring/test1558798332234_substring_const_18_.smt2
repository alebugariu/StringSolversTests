(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1263 (str.substr "a" (- 1) (- 1))))
 (= ?x1263 "")))
(check-sat)

(get-info :reason-unknown)



