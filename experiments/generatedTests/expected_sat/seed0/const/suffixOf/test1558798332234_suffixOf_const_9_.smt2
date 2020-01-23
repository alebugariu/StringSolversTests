(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2837 (str.suffixof "a" "a")))
 (= $x2837 true)))
(check-sat)

(get-info :reason-unknown)



