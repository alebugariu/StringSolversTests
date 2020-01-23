(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2618 (str.prefixof "-1" "\x07")))
 (= $x2618 false)))
(check-sat)

(get-info :reason-unknown)



