(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x310 (str.indexof "2" "\x07" 0)))
 (= ?x310 (- 1))))
(check-sat)

(get-info :reason-unknown)



