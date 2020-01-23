(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2319 (str.indexof "0" "a" (- 1))))
 (= ?x2319 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
