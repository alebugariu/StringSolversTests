(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2715 (str.suffixof "-1" "\n")))
 (= $x2715 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
