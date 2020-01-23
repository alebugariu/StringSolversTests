(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1405 (str.replace """a""" "a" "-1")))
 (= ?x1405 """-1""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
