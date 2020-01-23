(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2247 (str.contains "0" "2")))
 (= $x2247 false)))
(check-sat)

(get-info :reason-unknown)



