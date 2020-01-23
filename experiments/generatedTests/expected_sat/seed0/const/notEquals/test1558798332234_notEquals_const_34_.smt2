(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1811 (= "\n" "2")))
 (= $x1811 false)))
(check-sat)

(get-info :reason-unknown)



