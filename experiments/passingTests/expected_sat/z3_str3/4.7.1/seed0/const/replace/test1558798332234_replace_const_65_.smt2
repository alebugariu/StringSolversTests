(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1205 (str.replace """a""" "" """a""")))
 (= ?x1205 """a""""a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
