(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2222 (str.replace "-1" "2" "a")))
 (= ?x2222 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
