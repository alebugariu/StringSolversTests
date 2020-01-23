(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1599 (str.replace """a""" "2" "a")))
 (= ?x1599 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
