(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2200 (str.suffixof "\n" "2")))
 (= $x2200 false)))
(check-sat)

(get-info :reason-unknown)



