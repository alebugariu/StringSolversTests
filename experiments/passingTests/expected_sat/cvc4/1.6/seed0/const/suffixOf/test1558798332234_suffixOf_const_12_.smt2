(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1235 (str.suffixof "-1" "-1")))
 (= $x1235 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
