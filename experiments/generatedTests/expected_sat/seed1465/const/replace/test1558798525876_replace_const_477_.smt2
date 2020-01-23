(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2438 (str.replace "2" "\x07" "-1")))
 (= ?x2438 "2")))
(check-sat)

(get-info :reason-unknown)



