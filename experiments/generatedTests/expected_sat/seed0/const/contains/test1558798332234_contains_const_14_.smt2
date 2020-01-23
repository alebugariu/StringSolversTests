(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x303 (str.contains "2" "")))
 (= $x303 true)))
(check-sat)

(get-info :reason-unknown)



