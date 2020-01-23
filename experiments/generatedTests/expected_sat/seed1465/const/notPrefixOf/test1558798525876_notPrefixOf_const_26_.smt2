(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2201 (str.prefixof "\n" "0")))
 (= $x2201 false)))
(check-sat)

(get-info :reason-unknown)



