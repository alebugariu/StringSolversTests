(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2629 (str.indexof "\x07" "" 2)))
 (= ?x2629 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
