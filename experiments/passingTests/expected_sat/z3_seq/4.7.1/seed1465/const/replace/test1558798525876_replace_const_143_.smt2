(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1763 (str.replace "a" """a""" "2")))
 (= ?x1763 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
