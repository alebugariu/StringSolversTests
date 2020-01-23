(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1456 (str.replace """a""" "\x07" "\n")))
 (= ?x1456 """a""")))
(check-sat)

(get-info :reason-unknown)



