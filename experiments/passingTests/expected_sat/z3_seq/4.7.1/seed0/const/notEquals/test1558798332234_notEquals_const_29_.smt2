(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2724 (= "\n" """a""")))
 (= $x2724 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
