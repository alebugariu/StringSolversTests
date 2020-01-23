(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x104 (str.prefixof "2" "\n")))
 (= $x104 false)))
(check-sat)

(get-info :reason-unknown)



