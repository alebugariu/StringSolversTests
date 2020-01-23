(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x154 (str.at "0" (- 1))))
 (= ?x154 "")))
(check-sat)

(get-info :reason-unknown)



