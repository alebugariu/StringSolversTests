(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1751 (str.replace "a" """a""" "-1")))
 (= ?x1751 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
