(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1487 (str.replace """a""" "\n" """a""")))
 (= ?x1487 """a""")))
(check-sat)

(get-info :reason-unknown)



