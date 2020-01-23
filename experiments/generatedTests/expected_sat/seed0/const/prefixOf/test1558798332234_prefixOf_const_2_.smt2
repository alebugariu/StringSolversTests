(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1921 (str.prefixof "" "a")))
 (= $x1921 true)))
(check-sat)

(get-info :reason-unknown)



