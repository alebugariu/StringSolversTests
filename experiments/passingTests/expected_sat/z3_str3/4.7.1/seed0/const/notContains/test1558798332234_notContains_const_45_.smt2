(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2052 (str.contains "2" "\n")))
 (= $x2052 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
