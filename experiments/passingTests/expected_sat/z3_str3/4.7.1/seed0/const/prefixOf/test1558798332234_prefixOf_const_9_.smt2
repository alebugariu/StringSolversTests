(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1069 (str.prefixof "a" "a")))
 (= $x1069 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
