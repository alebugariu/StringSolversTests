(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x533 (str.prefixof "-1" "2")))
 (= $x533 false)))
(check-sat)

(get-info :reason-unknown)



