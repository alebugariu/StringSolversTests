(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1305 (str.suffixof "0" "\x07")))
 (= $x1305 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
