(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x757 (str.replace "0" "2" "\x07")))
 (= ?x757 "0")))
(check-sat)

(get-info :reason-unknown)



