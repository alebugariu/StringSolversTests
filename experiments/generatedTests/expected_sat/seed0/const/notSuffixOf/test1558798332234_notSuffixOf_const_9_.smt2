(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1703 (str.suffixof "a" "\x07")))
 (= $x1703 false)))
(check-sat)

(get-info :reason-unknown)



