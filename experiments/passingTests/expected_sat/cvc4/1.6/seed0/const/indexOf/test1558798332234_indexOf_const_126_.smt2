(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x292 (str.indexof "-1" "a" (- 1))))
 (= ?x292 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
