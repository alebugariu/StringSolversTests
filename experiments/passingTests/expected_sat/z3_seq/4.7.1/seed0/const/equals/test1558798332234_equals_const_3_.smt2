(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2870 (= "\x07" "\x07")))
 (= $x2870 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
