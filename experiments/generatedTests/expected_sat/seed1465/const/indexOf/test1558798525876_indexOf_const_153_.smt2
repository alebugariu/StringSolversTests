(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2499 (str.indexof "0" "\x07" (- 1))))
 (= ?x2499 (- 1))))
(check-sat)

(get-info :reason-unknown)



