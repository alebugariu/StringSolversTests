(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x720 (str.suffixof "a" "0")))
 (= $x720 false)))
(check-sat)

(get-info :reason-unknown)



