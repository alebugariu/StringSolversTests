(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1658 (= "2" "\n")))
 (= $x1658 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
