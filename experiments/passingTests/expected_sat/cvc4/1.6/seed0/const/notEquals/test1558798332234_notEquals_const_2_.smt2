(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2763 (= "" "\x07")))
 (= $x2763 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
