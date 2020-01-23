(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x128 (str.contains "-1" "\n")))
 (= $x128 false)))
(check-sat)

(get-info :reason-unknown)



