(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1417 (str.suffixof "" "a")))
 (= $x1417 true)))
(check-sat)

(get-info :reason-unknown)



