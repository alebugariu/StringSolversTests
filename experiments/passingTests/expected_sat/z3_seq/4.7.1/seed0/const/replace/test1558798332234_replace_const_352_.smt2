(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2123 (str.replace "-1" "\n" "")))
 (= ?x2123 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
