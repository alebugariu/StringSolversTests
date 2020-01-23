(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x202 (str.indexof "2" "2" (- 1))))
 (= ?x202 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
