(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2670 (str.indexof "-1" "\x07" 0)))
 (= ?x2670 (- 1))))
(check-sat)

(get-info :reason-unknown)



