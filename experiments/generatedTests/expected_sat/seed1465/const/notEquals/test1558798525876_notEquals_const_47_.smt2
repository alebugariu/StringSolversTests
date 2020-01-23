(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x106 (= "0" "-1")))
 (= $x106 false)))
(check-sat)

(get-info :reason-unknown)



