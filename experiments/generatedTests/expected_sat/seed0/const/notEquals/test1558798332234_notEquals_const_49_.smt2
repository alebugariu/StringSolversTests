(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x147 (= "2" "")))
 (= $x147 false)))
(check-sat)

(get-info :reason-unknown)



