(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x548 (str.indexof "0" "\x07" (- 1))))
 (= ?x548 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
