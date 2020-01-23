(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1620 (str.indexof "2" "\x07" (- 1))))
 (= ?x1620 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
