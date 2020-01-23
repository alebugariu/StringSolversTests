(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2749 (= "\n" "2")))
 (= $x2749 false)))
(check-sat)

(get-info :reason-unknown)



