(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x526 (str.++ "-1" "2")))
 (= ?x526 "-12")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
