(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1643 (str.suffixof "" "0")))
 (= $x1643 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
