(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2588 (str.contains "a" "\x07")))
 (= $x2588 false)))
(check-sat)

(get-info :reason-unknown)



