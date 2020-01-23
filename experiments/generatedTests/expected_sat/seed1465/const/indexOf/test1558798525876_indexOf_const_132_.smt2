(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2057 (str.indexof "-1" "\n" (- 1))))
 (= ?x2057 (- 1))))
(check-sat)

(get-info :reason-unknown)



