(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2369 (str.indexof "\x07" "a" 2)))
 (= ?x2369 (- 1))))
(check-sat)

(get-info :reason-unknown)



