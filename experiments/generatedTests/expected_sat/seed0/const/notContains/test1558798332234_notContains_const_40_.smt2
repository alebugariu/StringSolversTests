(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1599 (str.contains "0" "-1")))
 (= $x1599 false)))
(check-sat)

(get-info :reason-unknown)



