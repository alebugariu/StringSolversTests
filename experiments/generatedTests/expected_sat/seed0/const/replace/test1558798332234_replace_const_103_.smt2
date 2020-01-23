(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1511 (str.replace """a""" "\n" "2")))
 (= ?x1511 """a""")))
(check-sat)

(get-info :reason-unknown)



