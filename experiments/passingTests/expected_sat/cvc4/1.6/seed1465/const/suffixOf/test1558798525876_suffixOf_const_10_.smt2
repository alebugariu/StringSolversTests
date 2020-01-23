(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1441 (str.suffixof "\x07" "\x07")))
 (= $x1441 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
