(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1527 (str.replace """a""" "-1" "a")))
 (= ?x1527 """a""")))
(check-sat)

(get-info :reason-unknown)



