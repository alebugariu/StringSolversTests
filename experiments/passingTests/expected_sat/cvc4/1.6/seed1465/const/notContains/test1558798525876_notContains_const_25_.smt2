(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2192 (str.contains "\n" "a")))
 (= $x2192 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
