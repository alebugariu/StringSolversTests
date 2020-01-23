(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2409 (str.indexof "\x07" "\x07" 2)))
 (= ?x2409 (- 1))))
(check-sat)

(get-info :reason-unknown)



