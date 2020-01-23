(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1908 (= "0" "\x07")))
 (= $x1908 false)))
(check-sat)

(get-info :reason-unknown)



