(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1296 (str.prefixof "-1" "-1")))
 (= $x1296 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
