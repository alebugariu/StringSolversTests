(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2138 (str.indexof "a" "\x07" 0)))
 (= ?x2138 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
