(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1650 (str.prefixof "0" "-1")))
 (= $x1650 false)))
(check-sat)

(get-info :reason-unknown)



