(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x644 (= "\n" "-1")))
 (= $x644 false)))
(check-sat)

(get-info :reason-unknown)



