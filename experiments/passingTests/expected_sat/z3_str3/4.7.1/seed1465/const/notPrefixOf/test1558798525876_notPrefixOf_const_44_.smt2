(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2418 (str.prefixof "2" "a")))
 (= $x2418 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
