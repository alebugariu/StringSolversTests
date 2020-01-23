(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x656 (= "2" "\x07")))
 (= $x656 false)))
(check-sat)

(get-info :reason-unknown)



