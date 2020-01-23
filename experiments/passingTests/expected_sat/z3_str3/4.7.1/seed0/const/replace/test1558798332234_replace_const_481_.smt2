(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2537 (str.replace "2" "\n" """a""")))
 (= ?x2537 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
