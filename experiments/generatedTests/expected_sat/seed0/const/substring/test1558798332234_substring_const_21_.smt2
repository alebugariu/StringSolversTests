(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x240 (str.substr "a" 0 (- 1))))
 (= ?x240 "")))
(check-sat)

(get-info :reason-unknown)



