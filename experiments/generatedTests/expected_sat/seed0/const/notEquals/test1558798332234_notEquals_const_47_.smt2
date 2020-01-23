(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x975 (= "0" "-1")))
 (= $x975 false)))
(check-sat)

(get-info :reason-unknown)



