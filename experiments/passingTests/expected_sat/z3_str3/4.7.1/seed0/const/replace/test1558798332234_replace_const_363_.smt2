(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x580 (str.replace "-1" "-1" "\x07")))
 (= ?x580 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
