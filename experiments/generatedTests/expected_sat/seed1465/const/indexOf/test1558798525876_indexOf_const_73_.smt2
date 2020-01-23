(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x555 (str.indexof "\x07" "" 0)))
 (= ?x555 0)))
(check-sat)

(get-info :reason-unknown)



