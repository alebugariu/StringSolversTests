(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1231 (str.indexof "\n" "\x07" 2)))
 (= ?x1231 (- 1))))
(check-sat)

(get-info :reason-unknown)



