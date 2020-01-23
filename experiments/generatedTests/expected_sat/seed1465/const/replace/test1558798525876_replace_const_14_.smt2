(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x848 (str.replace "" """a""" "0")))
 (= ?x848 "")))
(check-sat)

(get-info :reason-unknown)



