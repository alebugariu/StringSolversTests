(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x665 (str.indexof "-1" "" 0)))
 (= ?x665 0)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
