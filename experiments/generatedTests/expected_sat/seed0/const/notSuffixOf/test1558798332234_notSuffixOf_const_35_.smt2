(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1048 (str.suffixof "0" "")))
 (= $x1048 false)))
(check-sat)

(get-info :reason-unknown)



