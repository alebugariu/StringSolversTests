(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1551 (str.replace "-1" "-1" "-1")))
 (= ?x1551 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
