(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1691 (str.replace "a" "" "-1")))
 (= ?x1691 "-1a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
