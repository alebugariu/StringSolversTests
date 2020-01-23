(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2353 (str.prefixof "\x07" "\x07")))
 (= $x2353 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
