(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2205 (str.indexof "0" "-1" 2)))
 (= ?x2205 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
