(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1749 (= "\n" "-1")))
 (= $x1749 false)))
(check-sat)

(get-info :reason-unknown)



