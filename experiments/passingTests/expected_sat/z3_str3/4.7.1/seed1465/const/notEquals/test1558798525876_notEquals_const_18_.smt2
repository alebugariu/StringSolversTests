(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2330 (= "a" "-1")))
 (= $x2330 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
