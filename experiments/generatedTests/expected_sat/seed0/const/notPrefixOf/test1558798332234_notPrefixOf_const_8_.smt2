(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2655 (str.prefixof "a" """a""")))
 (= $x2655 false)))
(check-sat)

(get-info :reason-unknown)



