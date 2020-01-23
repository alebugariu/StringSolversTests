(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1603 (str.replace """a""" "2" "\x07")))
 (= ?x1603 """a""")))
(check-sat)

(get-info :reason-unknown)



