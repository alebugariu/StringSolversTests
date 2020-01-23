(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2306 (str.contains "" "0")))
 (= $x2306 false)))
(check-sat)

(get-info :reason-unknown)



