(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x756 (str.replace "0" "0" "-1")))
 (= ?x756 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
