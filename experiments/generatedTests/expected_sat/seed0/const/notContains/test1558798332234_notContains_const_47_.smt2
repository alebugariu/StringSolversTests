(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1885 (str.contains "2" "0")))
 (= $x1885 false)))
(check-sat)

(get-info :reason-unknown)



