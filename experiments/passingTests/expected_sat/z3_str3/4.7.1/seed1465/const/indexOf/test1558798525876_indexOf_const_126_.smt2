(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2059 (str.indexof "-1" "a" (- 1))))
 (= ?x2059 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
