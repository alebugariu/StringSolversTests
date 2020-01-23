(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1668 (str.indexof "\x07" "\x07" 2)))
 (= ?x1668 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
