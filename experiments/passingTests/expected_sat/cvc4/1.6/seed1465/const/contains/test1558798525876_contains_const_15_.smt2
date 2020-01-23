(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1203 (str.contains "2" "2")))
 (= $x1203 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
