(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2489 (str.indexof "2" "\n" (- 1))))
 (= ?x2489 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
