(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1030 (str.replace "-1" "\x07" "\n")))
 (= ?x1030 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
