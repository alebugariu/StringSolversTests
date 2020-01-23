(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2480 (str.contains "2" "a")))
 (= $x2480 false)))
(check-sat)

(get-info :reason-unknown)



