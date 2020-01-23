(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1596 (str.substr """a""" 2 0)))
 (= ?x1596 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
