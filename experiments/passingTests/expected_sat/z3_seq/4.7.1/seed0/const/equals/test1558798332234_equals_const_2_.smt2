(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2861 (= "a" "a")))
 (= $x2861 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
