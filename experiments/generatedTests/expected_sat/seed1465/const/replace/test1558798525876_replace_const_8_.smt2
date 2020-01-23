(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x800 (str.replace "" """a""" "")))
 (= ?x800 "")))
(check-sat)

(get-info :reason-unknown)



