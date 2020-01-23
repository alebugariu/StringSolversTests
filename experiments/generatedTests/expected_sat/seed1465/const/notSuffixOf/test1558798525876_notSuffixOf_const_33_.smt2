(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x486 (str.suffixof "-1" "0")))
 (= $x486 false)))
(check-sat)

(get-info :reason-unknown)



