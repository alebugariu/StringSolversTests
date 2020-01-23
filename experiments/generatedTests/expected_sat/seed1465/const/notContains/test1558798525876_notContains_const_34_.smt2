(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2338 (str.contains "-1" "0")))
 (= $x2338 false)))
(check-sat)

(get-info :reason-unknown)



