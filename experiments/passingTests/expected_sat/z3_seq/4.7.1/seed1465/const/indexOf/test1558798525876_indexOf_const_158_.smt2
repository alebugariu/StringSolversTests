(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2497 (str.indexof "0" "\n" 2)))
 (= ?x2497 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
