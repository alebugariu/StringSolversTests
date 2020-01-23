(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2722 (str.indexof "a" "-1" 0)))
 (= ?x2722 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
