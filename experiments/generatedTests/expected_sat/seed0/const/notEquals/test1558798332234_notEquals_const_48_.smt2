(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1966 (= "0" "2")))
 (= $x1966 false)))
(check-sat)

(get-info :reason-unknown)



