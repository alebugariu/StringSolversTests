(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2104 (str.indexof "\n" "" 0)))
 (= ?x2104 0)))
(check-sat)

(get-info :reason-unknown)



