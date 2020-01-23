(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2068 (str.indexof "a" "\n" 2)))
 (= ?x2068 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
