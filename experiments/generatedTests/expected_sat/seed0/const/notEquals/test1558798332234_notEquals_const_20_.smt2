(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x427 (= "a" "2")))
 (= $x427 false)))
(check-sat)

(get-info :reason-unknown)



