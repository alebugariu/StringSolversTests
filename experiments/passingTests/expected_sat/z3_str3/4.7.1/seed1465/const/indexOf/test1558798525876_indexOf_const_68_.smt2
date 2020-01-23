(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1443 (str.indexof "a" "0" 2)))
 (= ?x1443 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
