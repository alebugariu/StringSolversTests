(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x809 (str.prefixof "2" "0")))
 (= $x809 false)))
(check-sat)

(get-info :reason-unknown)



