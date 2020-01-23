(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1858 (str.indexof "2" "2" 2)))
 (= ?x1858 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
