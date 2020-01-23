(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2074 (str.substr "\n" (- 1) (- 1))))
 (= ?x2074 "")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
