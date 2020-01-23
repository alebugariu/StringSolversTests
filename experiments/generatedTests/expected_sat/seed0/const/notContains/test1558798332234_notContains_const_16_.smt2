(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x416 (str.contains "a" "0")))
 (= $x416 false)))
(check-sat)

(get-info :reason-unknown)



