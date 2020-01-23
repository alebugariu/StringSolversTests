(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1906 (str.contains "a" "a")))
 (= $x1906 true)))
(check-sat)

(get-info :reason-unknown)



