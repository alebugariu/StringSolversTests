(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1617 (= "2" "\x07")))
 (= $x1617 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
