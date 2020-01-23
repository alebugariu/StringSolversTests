(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1595 (str.replace """a""" "2" """a""")))
 (= ?x1595 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
