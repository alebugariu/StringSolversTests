(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2407 (str.indexof "2" "0" 0)))
 (= ?x2407 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
