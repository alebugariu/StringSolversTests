(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1887 (str.indexof "a" "0" (- 1))))
 (= ?x1887 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
