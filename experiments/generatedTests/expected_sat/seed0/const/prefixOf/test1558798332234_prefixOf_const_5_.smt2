(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x490 (str.prefixof "" "-1")))
 (= $x490 true)))
(check-sat)

(get-info :reason-unknown)



