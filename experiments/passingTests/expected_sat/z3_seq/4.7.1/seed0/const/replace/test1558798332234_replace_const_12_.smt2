(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x832 (str.replace "" """a""" "\n")))
 (= ?x832 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
