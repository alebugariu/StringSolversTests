(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x57 (str.at "" 0)))
 (= ?x57 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
