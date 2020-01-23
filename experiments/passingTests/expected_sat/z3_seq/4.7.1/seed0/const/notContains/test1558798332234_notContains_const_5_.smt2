(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1671 (str.contains "" "0")))
 (= $x1671 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
