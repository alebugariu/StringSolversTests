(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x281 (= "a" "0")))
 (= $x281 false)))
(check-sat)

(get-info :reason-unknown)



