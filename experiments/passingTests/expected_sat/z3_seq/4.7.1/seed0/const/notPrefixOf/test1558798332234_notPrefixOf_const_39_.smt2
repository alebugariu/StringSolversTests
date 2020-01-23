(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1568 (str.prefixof "0" "\n")))
 (= $x1568 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
