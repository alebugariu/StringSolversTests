(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2234 (str.substr """a""" 2 (- 1))))
 (= ?x2234 "")))
(check-sat)

(get-info :reason-unknown)



