(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x151 (str.prefixof "-1" "\n")))
 (= $x151 false)))
(check-sat)

(get-info :reason-unknown)



