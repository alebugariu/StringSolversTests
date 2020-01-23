(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1362 (str.prefixof "\x07" """a""")))
 (= $x1362 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
