(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2097 (str.replace "-1" "a" "2")))
 (= ?x2097 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
