(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1185 (str.prefixof "a" "2")))
 (= $x1185 false)))
(check-sat)

(get-info :reason-unknown)



