(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2477 (str.suffixof "\n" "2")))
 (= $x2477 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
