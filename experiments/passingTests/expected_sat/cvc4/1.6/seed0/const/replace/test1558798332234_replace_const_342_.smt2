(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2378 (str.replace "-1" "a" "0")))
 (= ?x2378 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
