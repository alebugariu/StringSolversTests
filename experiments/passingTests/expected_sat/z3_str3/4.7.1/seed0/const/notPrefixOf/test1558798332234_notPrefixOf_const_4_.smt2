(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x735 (str.prefixof """a""" "-1")))
 (= $x735 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
