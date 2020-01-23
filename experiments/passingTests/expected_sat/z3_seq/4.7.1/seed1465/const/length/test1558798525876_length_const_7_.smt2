(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x149 (str.len "2")))
 (= ?x149 1)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
