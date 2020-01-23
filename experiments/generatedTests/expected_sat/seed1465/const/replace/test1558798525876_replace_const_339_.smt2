(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x454 (str.replace "-1" "a" "\x07")))
 (= ?x454 "-1")))
(check-sat)

(get-info :reason-unknown)



