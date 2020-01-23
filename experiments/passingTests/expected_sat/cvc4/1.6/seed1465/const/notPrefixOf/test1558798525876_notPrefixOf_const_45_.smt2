(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2654 (str.prefixof "2" "\x07")))
 (= $x2654 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
