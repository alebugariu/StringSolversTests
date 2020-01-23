(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1084 (str.prefixof "0" "\n")))
 (= $x1084 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
