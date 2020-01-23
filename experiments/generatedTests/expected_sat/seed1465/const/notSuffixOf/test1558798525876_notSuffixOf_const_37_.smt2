(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1240 (str.suffixof "0" "a")))
 (= $x1240 false)))
(check-sat)

(get-info :reason-unknown)



