(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2002 (str.prefixof "a" "\x07")))
 (= $x2002 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
