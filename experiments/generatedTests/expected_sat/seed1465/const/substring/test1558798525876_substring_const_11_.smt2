(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2469 (str.substr """a""" (- 1) 2)))
 (= ?x2469 "")))
(check-sat)

(get-info :reason-unknown)



