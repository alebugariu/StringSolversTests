(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1535 (str.replace "-1" "\n" "\x07")))
 (= ?x1535 "-1")))
(check-sat)

(get-info :reason-unknown)



