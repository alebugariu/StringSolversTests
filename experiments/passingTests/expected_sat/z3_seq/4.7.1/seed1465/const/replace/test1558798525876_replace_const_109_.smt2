(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1539 (str.replace """a""" "-1" "-1")))
 (= ?x1539 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
