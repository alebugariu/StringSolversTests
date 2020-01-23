(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1398 (= "2" "0")))
 (= $x1398 false)))
(check-sat)

(get-info :reason-unknown)



