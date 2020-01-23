(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1587 (= "2" "a")))
 (= $x1587 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
