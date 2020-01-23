(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x362 (str.indexof "\n" """a""" (- 1))))
 (= ?x362 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
