(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2001 (str.suffixof "a" "0")))
 (= $x2001 false)))
(check-sat)

(get-info :reason-unknown)



