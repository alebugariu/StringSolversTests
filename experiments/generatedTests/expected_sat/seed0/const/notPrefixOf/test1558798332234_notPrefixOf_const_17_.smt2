(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x193 (str.prefixof "\x07" "\n")))
 (= $x193 false)))
(check-sat)

(get-info :reason-unknown)



