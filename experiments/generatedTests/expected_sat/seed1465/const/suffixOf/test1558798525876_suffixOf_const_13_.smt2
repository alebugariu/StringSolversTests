(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2809 (str.suffixof "0" "0")))
 (= $x2809 true)))
(check-sat)

(get-info :reason-unknown)



