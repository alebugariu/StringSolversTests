(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1523 (str.replace "2" """a""" "0")))
 (= ?x1523 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
