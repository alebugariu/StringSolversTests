(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2786 (str.indexof """a""" "" 0)))
 (= ?x2786 0)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
