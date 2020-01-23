(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x630 (str.substr "\n" (- 1) 0)))
 (= ?x630 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
