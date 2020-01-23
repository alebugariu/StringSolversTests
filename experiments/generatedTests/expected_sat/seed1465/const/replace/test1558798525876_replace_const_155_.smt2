(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1845 (str.replace "a" "\x07" "\x07")))
 (= ?x1845 "a")))
(check-sat)

(get-info :reason-unknown)



