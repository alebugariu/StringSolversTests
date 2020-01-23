(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x744 (str.suffixof "\n" """a""")))
 (= $x744 false)))
(check-sat)

(get-info :reason-unknown)



