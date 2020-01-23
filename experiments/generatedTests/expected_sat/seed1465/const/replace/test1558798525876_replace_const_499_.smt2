(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x300 (str.replace "2" "0" "\x07")))
 (= ?x300 "2")))
(check-sat)

(get-info :reason-unknown)



