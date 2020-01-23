(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x321 (str.replace "-1" "a" "")))
 (= ?x321 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
