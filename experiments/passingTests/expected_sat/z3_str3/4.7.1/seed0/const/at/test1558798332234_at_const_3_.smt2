(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x71 (str.at """a""" (- 1))))
 (= ?x71 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
