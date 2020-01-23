(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1569 (str.prefixof "-1" "0")))
 (= $x1569 false)))
(check-sat)

(get-info :reason-unknown)



