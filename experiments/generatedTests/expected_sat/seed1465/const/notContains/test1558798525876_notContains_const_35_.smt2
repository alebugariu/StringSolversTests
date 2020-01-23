(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1556 (str.contains "-1" "2")))
 (= $x1556 false)))
(check-sat)

(get-info :reason-unknown)



