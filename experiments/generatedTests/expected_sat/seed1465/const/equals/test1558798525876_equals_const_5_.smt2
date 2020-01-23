(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2356 (= "-1" "-1")))
 (= $x2356 true)))
(check-sat)

(get-info :reason-unknown)



