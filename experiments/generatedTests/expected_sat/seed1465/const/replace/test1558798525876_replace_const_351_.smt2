(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x766 (str.replace "-1" "\x07" "2")))
 (= ?x766 "-1")))
(check-sat)

(get-info :reason-unknown)



