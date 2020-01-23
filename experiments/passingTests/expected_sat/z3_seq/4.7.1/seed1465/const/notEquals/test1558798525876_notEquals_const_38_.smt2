(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2318 (= "-1" "\x07")))
 (= $x2318 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
