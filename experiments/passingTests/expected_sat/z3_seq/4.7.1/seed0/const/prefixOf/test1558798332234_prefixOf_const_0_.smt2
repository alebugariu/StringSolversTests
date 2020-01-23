(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1657 (str.prefixof "" "")))
 (= $x1657 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
