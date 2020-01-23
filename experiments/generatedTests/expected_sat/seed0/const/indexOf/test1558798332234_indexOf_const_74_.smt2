(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x930 (str.indexof "\x07" "" 2)))
 (= ?x930 (- 1))))
(check-sat)

(get-info :reason-unknown)



