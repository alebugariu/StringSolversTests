(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2193 (str.substr """a""" 0 (- 1))))
 (= ?x2193 "")))
(check-sat)

(get-info :reason-unknown)



