(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1757 (str.substr "a" 0 0)))
 (= ?x1757 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
