(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x390 (str.indexof "0" "" 0)))
 (= ?x390 0)))
(check-sat)

(get-info :reason-unknown)



