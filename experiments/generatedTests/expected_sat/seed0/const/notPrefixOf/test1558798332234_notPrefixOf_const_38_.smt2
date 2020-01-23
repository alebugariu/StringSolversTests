(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2161 (str.prefixof "0" "\x07")))
 (= $x2161 false)))
(check-sat)

(get-info :reason-unknown)



