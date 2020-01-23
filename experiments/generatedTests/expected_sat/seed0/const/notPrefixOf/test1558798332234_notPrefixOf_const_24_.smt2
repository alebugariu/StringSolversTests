(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1712 (str.prefixof "\n" "\x07")))
 (= $x1712 false)))
(check-sat)

(get-info :reason-unknown)



