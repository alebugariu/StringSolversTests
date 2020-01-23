(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1499 (str.replace """a""" "\n" "\n")))
 (= ?x1499 """a""")))
(check-sat)

(get-info :reason-unknown)



