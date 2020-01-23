(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x764 (str.suffixof "" "2")))
 (= $x764 true)))
(check-sat)

(get-info :reason-unknown)



