(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1845 (str.suffixof "-1" "0")))
 (= $x1845 false)))
(check-sat)

(get-info :reason-unknown)



