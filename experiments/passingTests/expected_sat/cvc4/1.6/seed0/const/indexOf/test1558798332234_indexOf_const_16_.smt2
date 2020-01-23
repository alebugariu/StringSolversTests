(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2483 (str.indexof "" "-1" 0)))
 (= ?x2483 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
