(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2230 (str.indexof "2" "a" 0)))
 (= ?x2230 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
