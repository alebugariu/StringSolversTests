(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x576 (= "" "\x07")))
 (= $x576 false)))
(check-sat)

(get-info :reason-unknown)



