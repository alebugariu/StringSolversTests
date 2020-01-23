(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1383 (= "2" "-1")))
 (= $x1383 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
