(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x900 (str.indexof "\x07" "\n" 2)))
 (= ?x900 (- 1))))
(check-sat)

(get-info :reason-unknown)



