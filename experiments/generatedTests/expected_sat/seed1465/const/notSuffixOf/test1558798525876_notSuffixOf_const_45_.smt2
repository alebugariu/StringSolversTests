(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2102 (str.suffixof "2" "\x07")))
 (= $x2102 false)))
(check-sat)

(get-info :reason-unknown)



