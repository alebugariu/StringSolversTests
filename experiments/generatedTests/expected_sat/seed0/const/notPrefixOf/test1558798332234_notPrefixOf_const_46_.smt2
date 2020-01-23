(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2796 (str.prefixof "2" "\n")))
 (= $x2796 false)))
(check-sat)

(get-info :reason-unknown)



