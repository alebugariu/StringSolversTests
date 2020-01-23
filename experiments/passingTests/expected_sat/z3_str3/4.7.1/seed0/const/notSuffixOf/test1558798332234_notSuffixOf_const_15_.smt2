(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2378 (str.suffixof "\x07" """a""")))
 (= $x2378 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
