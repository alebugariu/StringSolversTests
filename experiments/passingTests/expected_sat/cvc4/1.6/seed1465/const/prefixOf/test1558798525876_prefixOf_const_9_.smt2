(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1351 (str.prefixof "a" "a")))
 (= $x1351 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
