(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1518 (str.replace """a""" "-1" "")))
 (= ?x1518 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
