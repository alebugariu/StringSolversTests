(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x935 (str.prefixof "0" "0")))
 (= $x935 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
