(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2546 (str.substr "a" 2 0)))
 (= ?x2546 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
