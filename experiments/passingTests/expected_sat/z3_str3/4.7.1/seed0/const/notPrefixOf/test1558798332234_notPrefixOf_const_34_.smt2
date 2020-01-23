(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1096 (str.prefixof "-1" "2")))
 (= $x1096 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
