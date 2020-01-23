(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x353 (str.contains "0" "")))
 (= $x353 true)))
(check-sat)

(get-info :reason-unknown)



