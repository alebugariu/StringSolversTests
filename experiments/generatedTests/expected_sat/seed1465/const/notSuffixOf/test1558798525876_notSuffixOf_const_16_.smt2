(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2646 (str.suffixof "\x07" "a")))
 (= $x2646 false)))
(check-sat)

(get-info :reason-unknown)



