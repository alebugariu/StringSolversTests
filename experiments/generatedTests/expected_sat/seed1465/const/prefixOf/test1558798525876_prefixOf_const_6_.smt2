(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1462 (str.prefixof "" "0")))
 (= $x1462 true)))
(check-sat)

(get-info :reason-unknown)



