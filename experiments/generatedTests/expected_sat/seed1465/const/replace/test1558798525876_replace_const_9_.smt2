(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x808 (str.replace "" """a""" """a""")))
 (= ?x808 "")))
(check-sat)

(get-info :reason-unknown)



