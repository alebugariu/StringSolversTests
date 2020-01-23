(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x942 (str.indexof "0" "a" 2)))
 (= ?x942 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
