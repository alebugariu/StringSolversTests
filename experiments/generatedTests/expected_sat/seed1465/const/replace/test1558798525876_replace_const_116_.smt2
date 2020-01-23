(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1571 (str.replace """a""" "0" "\n")))
 (= ?x1571 """a""")))
(check-sat)

(get-info :reason-unknown)



