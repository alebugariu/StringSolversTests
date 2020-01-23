(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2591 (str.contains "-1" "\n")))
 (= $x2591 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
