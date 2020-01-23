(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2380 (str.substr """a""" 2 0)))
 (= ?x2380 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
