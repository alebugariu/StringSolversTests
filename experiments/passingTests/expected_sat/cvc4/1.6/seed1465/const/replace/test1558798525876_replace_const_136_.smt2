(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1723 (str.replace "a" """a""" "")))
 (= ?x1723 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
