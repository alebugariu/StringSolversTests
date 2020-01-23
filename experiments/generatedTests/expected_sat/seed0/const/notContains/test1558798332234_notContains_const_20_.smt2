(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x819 (str.contains "\x07" "\n")))
 (= $x819 false)))
(check-sat)

(get-info :reason-unknown)



