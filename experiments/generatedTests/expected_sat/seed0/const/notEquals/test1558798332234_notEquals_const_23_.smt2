(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2260 (= "\x07" "a")))
 (= $x2260 false)))
(check-sat)

(get-info :reason-unknown)



