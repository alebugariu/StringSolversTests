(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1341 (str.contains "-1" "")))
 (= $x1341 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
