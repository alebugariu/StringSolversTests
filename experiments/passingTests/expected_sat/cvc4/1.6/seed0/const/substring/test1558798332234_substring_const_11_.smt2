(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1599 (str.substr """a""" (- 1) 2)))
 (= ?x1599 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
