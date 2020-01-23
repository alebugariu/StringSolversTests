(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2234 (str.contains "a" "\n")))
 (= $x2234 false)))
(check-sat)

(get-info :reason-unknown)



