(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x620 (str.prefixof "" "\x07")))
 (= $x620 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
