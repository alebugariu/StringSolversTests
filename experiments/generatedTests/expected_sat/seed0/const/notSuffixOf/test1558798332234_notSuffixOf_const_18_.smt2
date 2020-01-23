(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1144 (str.suffixof "\x07" "-1")))
 (= $x1144 false)))
(check-sat)

(get-info :reason-unknown)



