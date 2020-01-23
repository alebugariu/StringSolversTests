(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1313 (str.contains "\n" "\n")))
 (= $x1313 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
