(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x234 (str.replace "0" """a""" """a""")))
 (= ?x234 "0")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
