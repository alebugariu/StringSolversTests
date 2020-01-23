(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2744 (str.substr """a""" (- 1) 0)))
 (= ?x2744 "")))
(check-sat)

(get-info :reason-unknown)



