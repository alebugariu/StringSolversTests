(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2522 (str.prefixof "\x07" "2")))
 (= $x2522 false)))
(check-sat)

(get-info :reason-unknown)



