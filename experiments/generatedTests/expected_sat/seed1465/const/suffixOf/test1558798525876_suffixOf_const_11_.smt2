(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1280 (str.suffixof "\n" "\n")))
 (= $x1280 true)))
(check-sat)

(get-info :reason-unknown)



