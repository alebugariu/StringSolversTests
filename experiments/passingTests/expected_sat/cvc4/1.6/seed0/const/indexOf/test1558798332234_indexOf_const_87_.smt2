(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2746 (str.indexof "\x07" "-1" (- 1))))
 (= ?x2746 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
