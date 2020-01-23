(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2269 (str.suffixof "\n" "0")))
 (= $x2269 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
