(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x612 (str.contains "\n" "")))
 (= $x612 true)))
(check-sat)

(get-info :reason-unknown)



