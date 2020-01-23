(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2281 (str.len "2")))
 (= ?x2281 1)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
