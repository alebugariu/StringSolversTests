(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x913 (str.suffixof "" "")))
 (= $x913 true)))
(check-sat)

(get-info :reason-unknown)



