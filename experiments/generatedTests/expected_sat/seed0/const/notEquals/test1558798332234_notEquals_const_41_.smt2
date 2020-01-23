(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x612 (= "-1" "2")))
 (= $x612 false)))
(check-sat)

(get-info :reason-unknown)



