(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2546 (str.prefixof "a" "\x07")))
 (= $x2546 false)))
(check-sat)

(get-info :reason-unknown)



