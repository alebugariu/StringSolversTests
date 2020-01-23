(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x238 (str.replace "0" "-1" "\x07")))
 (= ?x238 "0")))
(check-sat)

(get-info :reason-unknown)



