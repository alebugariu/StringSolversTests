(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2461 (str.prefixof "0" "2")))
 (= $x2461 false)))
(check-sat)

(get-info :reason-unknown)



