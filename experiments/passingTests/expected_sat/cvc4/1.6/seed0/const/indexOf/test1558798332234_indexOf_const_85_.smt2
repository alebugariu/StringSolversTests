(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1779 (str.indexof "\x07" "\n" 0)))
 (= ?x1779 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
