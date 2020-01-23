(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1976 (str.replace "-1" "\x07" "\n")))
 (= ?x1976 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
