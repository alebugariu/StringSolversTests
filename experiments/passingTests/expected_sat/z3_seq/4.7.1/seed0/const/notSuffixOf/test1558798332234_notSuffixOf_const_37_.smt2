(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x412 (str.suffixof "0" "a")))
 (= $x412 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
