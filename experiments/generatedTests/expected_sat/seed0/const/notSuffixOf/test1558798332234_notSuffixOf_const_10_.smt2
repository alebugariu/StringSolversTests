(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x996 (str.suffixof "a" "\n")))
 (= $x996 false)))
(check-sat)

(get-info :reason-unknown)



