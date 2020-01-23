(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2545 (str.contains "\x07" "-1")))
 (= $x2545 false)))
(check-sat)

(get-info :reason-unknown)



