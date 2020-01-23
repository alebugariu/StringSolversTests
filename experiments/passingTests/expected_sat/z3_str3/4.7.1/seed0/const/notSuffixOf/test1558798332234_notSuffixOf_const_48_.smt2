(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2459 (str.suffixof "2" "0")))
 (= $x2459 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
