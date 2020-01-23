(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1482 (str.replace """a""" "\n" "")))
 (= ?x1482 """a""")))
(check-sat)

(get-info :reason-unknown)



