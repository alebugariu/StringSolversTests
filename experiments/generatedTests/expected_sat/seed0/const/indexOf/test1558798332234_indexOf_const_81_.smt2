(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1594 (str.indexof "\x07" "\x07" (- 1))))
 (= ?x1594 (- 1))))
(check-sat)

(get-info :reason-unknown)



