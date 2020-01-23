(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1183 (str.contains "" "\n")))
 (= $x1183 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
