(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2624 (str.replace "0" """a""" """a""")))
 (= ?x2624 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
