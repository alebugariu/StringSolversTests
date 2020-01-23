(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1928 (str.indexof "a" "2" 2)))
 (= ?x1928 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
