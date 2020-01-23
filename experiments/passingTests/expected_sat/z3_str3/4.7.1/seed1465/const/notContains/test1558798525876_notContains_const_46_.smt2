(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2270 (str.contains "2" "-1")))
 (= $x2270 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
