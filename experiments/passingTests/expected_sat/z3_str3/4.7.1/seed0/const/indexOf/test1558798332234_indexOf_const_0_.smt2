(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2594 (str.indexof "" "" (- 1))))
 (= ?x2594 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
