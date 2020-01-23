(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1487 (str.suffixof "-1" "\x07")))
 (= $x1487 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
