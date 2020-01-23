(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1549 (str.suffixof "" "\x07")))
 (= $x1549 true)))
(check-sat)

(get-info :reason-unknown)



