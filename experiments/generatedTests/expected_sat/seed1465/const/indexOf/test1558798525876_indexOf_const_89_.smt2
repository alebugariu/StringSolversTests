(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2449 (str.indexof "\x07" "-1" 2)))
 (= ?x2449 (- 1))))
(check-sat)

(get-info :reason-unknown)



