(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1187 (str.suffixof "a" "\n")))
 (= $x1187 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
