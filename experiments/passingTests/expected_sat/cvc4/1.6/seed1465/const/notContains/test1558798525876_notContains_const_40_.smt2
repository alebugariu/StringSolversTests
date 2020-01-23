(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x822 (str.contains "0" "-1")))
 (= $x822 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
