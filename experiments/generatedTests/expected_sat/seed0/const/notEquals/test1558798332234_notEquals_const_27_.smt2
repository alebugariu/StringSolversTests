(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2008 (= "\x07" "2")))
 (= $x2008 false)))
(check-sat)

(get-info :reason-unknown)



