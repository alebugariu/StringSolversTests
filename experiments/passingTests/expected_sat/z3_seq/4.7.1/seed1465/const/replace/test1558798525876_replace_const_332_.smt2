(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2482 (str.replace "-1" """a""" "\n")))
 (= ?x2482 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
