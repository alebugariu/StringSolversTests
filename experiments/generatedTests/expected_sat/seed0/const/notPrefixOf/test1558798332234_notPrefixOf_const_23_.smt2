(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x248 (str.prefixof "\n" "a")))
 (= $x248 false)))
(check-sat)

(get-info :reason-unknown)



