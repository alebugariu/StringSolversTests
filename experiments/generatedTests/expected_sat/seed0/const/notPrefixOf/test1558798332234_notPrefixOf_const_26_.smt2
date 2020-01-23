(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1428 (str.prefixof "\n" "0")))
 (= $x1428 false)))
(check-sat)

(get-info :reason-unknown)



