(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1280 (str.to.int "-1")))
 (= ?x1280 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
