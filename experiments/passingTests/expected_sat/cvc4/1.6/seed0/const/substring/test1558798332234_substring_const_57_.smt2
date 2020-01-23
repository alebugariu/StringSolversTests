(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2199 (str.substr "0" 0 (- 1))))
 (= ?x2199 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
