(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1136 (str.contains "\x07" "2")))
 (= $x1136 false)))
(check-sat)

(get-info :reason-unknown)



