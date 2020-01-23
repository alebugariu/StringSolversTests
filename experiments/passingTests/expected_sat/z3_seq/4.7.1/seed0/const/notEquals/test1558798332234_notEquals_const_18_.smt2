(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1315 (= "a" "-1")))
 (= $x1315 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
