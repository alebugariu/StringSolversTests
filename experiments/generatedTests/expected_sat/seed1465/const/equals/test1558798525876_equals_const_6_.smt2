(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2800 (= "0" "0")))
 (= $x2800 true)))
(check-sat)

(get-info :reason-unknown)



