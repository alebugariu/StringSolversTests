(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1032 (str.prefixof "" "2")))
 (= $x1032 true)))
(check-sat)

(get-info :reason-unknown)



