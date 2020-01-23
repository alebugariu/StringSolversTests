(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2764 (str.substr "" 0 (- 1))))
 (= ?x2764 "")))
(check-sat)

(get-info :reason-unknown)



