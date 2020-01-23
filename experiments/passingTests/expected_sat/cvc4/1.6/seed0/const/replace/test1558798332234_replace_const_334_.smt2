(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2240 (str.replace "-1" """a""" "0")))
 (= ?x2240 "-1")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
