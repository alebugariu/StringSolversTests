(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1076 (= "\x07" "0")))
 (= $x1076 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
