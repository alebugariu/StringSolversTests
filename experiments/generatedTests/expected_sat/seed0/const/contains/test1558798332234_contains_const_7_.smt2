(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1054 (str.contains "\x07" "\x07")))
 (= $x1054 true)))
(check-sat)

(get-info :reason-unknown)



