(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1531 (str.replace """a""" "-1" "\x07")))
 (= ?x1531 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
