(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2841 (str.prefixof "-1" "-1")))
 (= $x2841 true)))
(check-sat)

(get-info :reason-unknown)



