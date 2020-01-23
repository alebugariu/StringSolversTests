(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2710 (str.suffixof "a" "2")))
 (= $x2710 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
