(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1495 (str.replace """a""" "\n" "\x07")))
 (= ?x1495 """a""")))
(check-sat)

(get-info :reason-unknown)



