(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1344 (str.contains "" "-1")))
 (= $x1344 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
