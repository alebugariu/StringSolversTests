(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2313 (= "0" "a")))
 (= $x2313 false)))
(check-sat)

(get-info :reason-unknown)



