(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x35 (str.indexof "2" "0" 2)))
 (= ?x35 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
