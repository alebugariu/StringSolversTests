(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1162 (str.len "0")))
 (= ?x1162 1)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
