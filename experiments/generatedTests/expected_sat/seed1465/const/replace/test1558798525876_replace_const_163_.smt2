(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1881 (str.replace "a" "\n" "\x07")))
 (= ?x1881 "a")))
(check-sat)

(get-info :reason-unknown)



