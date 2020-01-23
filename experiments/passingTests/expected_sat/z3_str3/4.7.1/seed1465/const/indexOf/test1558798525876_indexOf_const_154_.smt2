(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2461 (str.indexof "0" "\x07" 0)))
 (= ?x2461 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
