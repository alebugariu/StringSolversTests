(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2687 (str.prefixof "-1" "a")))
 (= $x2687 false)))
(check-sat)

(get-info :reason-unknown)



