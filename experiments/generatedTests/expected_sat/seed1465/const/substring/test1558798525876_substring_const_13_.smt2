(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2378 (str.substr """a""" 0 0)))
 (= ?x2378 "")))
(check-sat)

(get-info :reason-unknown)



