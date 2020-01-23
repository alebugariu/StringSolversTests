(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x899 (str.suffixof "" "-1")))
 (= $x899 true)))
(check-sat)

(get-info :reason-unknown)



