(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2547 (str.indexof "2" "a" (- 1))))
 (= ?x2547 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
