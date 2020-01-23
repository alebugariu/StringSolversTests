(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1462 (str.replace """a""" "\x07" "-1")))
 (= ?x1462 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
