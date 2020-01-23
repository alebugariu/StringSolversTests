(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1553 (str.indexof "-1" "" 2)))
 (= ?x1553 2)))
(check-sat)

(get-info :reason-unknown)



