(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2520 (str.suffixof "2" "2")))
 (= $x2520 true)))
(check-sat)

(get-info :reason-unknown)



