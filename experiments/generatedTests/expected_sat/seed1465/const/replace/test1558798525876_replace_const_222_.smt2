(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2232 (str.replace "\x07" "\x07" "0")))
 (= ?x2232 "0")))
(check-sat)

(get-info :reason-unknown)



