(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2587 (str.suffixof "2" "-1")))
 (= $x2587 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
