(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2182 (= "\x07" "a")))
 (= $x2182 false)))
(check-sat)

(get-info :reason-unknown)



