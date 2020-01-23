(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1292 (str.suffixof "a" "-1")))
 (= $x1292 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
