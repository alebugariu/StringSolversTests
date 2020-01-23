(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x455 (str.contains "" "2")))
 (= $x455 false)))
(check-sat)

(get-info :reason-unknown)



