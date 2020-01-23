(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1269 (str.contains "" "\x07")))
 (= $x1269 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
