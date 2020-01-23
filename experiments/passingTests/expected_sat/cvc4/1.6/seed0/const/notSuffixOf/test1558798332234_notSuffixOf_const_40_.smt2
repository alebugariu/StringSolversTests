(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1232 (str.suffixof "0" "-1")))
 (= $x1232 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
