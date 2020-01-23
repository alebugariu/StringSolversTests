(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1482 (str.suffixof "\n" "-1")))
 (= $x1482 false)))
(check-sat)

(get-info :reason-unknown)



