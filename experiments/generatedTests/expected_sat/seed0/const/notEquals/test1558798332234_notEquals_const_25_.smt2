(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x384 (= "\x07" "-1")))
 (= $x384 false)))
(check-sat)

(get-info :reason-unknown)



