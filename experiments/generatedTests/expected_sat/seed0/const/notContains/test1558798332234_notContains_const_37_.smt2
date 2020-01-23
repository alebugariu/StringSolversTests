(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x654 (str.contains "0" "a")))
 (= $x654 false)))
(check-sat)

(get-info :reason-unknown)



