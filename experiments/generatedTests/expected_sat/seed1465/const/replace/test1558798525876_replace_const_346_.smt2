(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1829 (str.replace "-1" "\x07" "a")))
 (= ?x1829 "-1")))
(check-sat)

(get-info :reason-unknown)



