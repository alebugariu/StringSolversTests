(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1963 (str.suffixof "0" "0")))
 (= $x1963 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
