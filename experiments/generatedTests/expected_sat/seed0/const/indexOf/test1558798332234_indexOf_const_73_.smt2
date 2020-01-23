(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x334 (str.indexof "\x07" "" 0)))
 (= ?x334 0)))
(check-sat)

(get-info :reason-unknown)



