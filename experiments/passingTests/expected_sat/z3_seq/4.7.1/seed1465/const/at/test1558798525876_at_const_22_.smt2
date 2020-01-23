(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x175 (str.at "2" 0)))
 (= ?x175 "2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
