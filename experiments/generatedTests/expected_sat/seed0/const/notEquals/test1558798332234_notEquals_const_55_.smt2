(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1779 (= "2" "0")))
 (= $x1779 false)))
(check-sat)

(get-info :reason-unknown)



