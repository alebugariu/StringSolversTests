(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x332 (str.indexof "0" "2" 2)))
 (= ?x332 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
