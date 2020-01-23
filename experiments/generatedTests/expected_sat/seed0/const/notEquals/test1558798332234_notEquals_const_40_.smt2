(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x333 (= "-1" "0")))
 (= $x333 false)))
(check-sat)

(get-info :reason-unknown)



