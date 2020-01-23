(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1699 (str.indexof "\n" """a""" 0)))
 (= ?x1699 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
