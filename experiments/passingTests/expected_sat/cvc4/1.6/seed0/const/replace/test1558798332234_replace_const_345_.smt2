(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1120 (str.replace "-1" "\x07" """a""")))
 (= ?x1120 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
