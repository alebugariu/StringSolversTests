(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1765 (str.indexof "\x07" "0" 0)))
 (= ?x1765 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
