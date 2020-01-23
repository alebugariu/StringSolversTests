(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x795 (str.prefixof "\x07" "-1")))
 (= $x795 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
