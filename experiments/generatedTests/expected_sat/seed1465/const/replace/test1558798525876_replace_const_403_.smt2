(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1380 (str.replace "0" "a" "\x07")))
 (= ?x1380 "0")))
(check-sat)

(get-info :reason-unknown)



