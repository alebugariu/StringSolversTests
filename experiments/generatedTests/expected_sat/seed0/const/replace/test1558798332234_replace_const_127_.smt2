(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1619 (str.replace """a""" "2" "2")))
 (= ?x1619 """a""")))
(check-sat)

(get-info :reason-unknown)



