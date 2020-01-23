(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2208 (str.suffixof "-1" "a")))
 (= $x2208 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
