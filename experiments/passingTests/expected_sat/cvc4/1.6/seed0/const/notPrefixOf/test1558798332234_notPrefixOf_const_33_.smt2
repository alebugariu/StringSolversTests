(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2781 (str.prefixof "-1" "0")))
 (= $x2781 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
