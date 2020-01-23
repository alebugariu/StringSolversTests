(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1575 (str.substr "\n" 2 (- 1))))
 (= ?x1575 "")))
(check-sat)

(get-info :reason-unknown)



