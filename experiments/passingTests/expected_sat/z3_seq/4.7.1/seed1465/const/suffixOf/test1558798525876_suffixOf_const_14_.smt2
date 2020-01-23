(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x975 (str.suffixof "2" "2")))
 (= $x975 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
