(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1166 (str.prefixof "-1" "\n")))
 (= $x1166 false)))
(check-sat)

(get-info :reason-unknown)



