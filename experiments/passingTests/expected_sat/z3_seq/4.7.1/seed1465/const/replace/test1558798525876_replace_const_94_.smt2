(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1468 (str.replace """a""" "\x07" "0")))
 (= ?x1468 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
