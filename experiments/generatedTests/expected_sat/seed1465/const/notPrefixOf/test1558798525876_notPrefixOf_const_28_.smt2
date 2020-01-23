(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2130 (str.prefixof "-1" "")))
 (= $x2130 false)))
(check-sat)

(get-info :reason-unknown)



