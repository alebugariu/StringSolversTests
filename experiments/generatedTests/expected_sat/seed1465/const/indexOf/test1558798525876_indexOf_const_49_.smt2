(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x305 (str.indexof "a" "" 0)))
 (= ?x305 0)))
(check-sat)

(get-info :reason-unknown)



