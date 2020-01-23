(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2504 (str.replace "-1" "\n" """a""")))
 (= ?x2504 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
