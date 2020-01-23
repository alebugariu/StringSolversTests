(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2130 (str.indexof "\x07" "-1" 0)))
 (= ?x2130 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
