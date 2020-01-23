(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2592 (str.to.int "-1")))
 (= ?x2592 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
