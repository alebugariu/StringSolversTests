(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1515 (str.suffixof "a" "")))
 (= $x1515 false)))
(check-sat)

(get-info :reason-unknown)



