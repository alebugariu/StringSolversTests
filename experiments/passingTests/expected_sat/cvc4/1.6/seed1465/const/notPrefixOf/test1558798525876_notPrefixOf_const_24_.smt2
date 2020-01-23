(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2693 (str.prefixof "\n" "\x07")))
 (= $x2693 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
