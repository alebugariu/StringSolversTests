(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2359 (str.indexof "\x07" "\x07" (- 1))))
 (= ?x2359 (- 1))))
(check-sat)

(get-info :reason-unknown)



