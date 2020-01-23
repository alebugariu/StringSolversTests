(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x616 (str.suffixof "\n" "0")))
 (= $x616 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
