(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x451 (str.suffixof "2" "")))
 (= $x451 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
