(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2559 (str.prefixof "" "0")))
 (= $x2559 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
