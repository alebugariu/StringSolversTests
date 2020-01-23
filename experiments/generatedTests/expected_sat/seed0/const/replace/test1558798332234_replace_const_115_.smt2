(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1567 (str.replace """a""" "0" "\x07")))
 (= ?x1567 """a""")))
(check-sat)

(get-info :reason-unknown)



