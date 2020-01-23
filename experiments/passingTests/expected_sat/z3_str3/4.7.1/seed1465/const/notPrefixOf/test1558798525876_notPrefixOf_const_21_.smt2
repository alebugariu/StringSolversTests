(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2103 (str.prefixof "\n" "")))
 (= $x2103 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
