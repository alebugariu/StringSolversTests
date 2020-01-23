(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1474 (str.replace """a""" "\x07" "2")))
 (= ?x1474 """a""")))
(check-sat)

(get-info :reason-unknown)



