(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x46 (str.contains "0" "0")))
 (= $x46 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
