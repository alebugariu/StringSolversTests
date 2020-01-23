(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x617 (str.substr """a""" 2 (- 1))))
 (= ?x617 "")))
(check-sat)

(get-info :reason-unknown)



