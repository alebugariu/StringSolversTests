(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2486 (= """a""" "\x07")))
 (= $x2486 false)))
(check-sat)

(get-info :reason-unknown)



