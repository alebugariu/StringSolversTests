(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2093 (str.prefixof "a" "-1")))
 (= $x2093 false)))
(check-sat)

(get-info :reason-unknown)



