(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1494 (str.suffixof "2" "0")))
 (= $x1494 false)))
(check-sat)

(get-info :reason-unknown)



