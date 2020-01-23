(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2584 (str.substr "\n" 2 0)))
 (= ?x2584 "")))
(check-sat)

(get-info :reason-unknown)



