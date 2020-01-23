(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2046 (str.prefixof "\n" "2")))
 (= $x2046 false)))
(check-sat)

(get-info :reason-unknown)



