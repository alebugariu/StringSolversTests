(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1108 (str.suffixof "-1" "\x07")))
 (= $x1108 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
