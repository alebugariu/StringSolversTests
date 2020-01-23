(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2760 (str.indexof "\x07" "\n" (- 1))))
 (= ?x2760 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
