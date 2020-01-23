(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x358 (str.prefixof "\x07" "-1")))
 (= $x358 false)))
(check-sat)

(get-info :reason-unknown)



