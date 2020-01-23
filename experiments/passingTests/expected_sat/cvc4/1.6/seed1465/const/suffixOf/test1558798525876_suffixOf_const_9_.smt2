(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2051 (str.suffixof "a" "a")))
 (= $x2051 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
