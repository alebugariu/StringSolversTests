(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2209 (str.replace "\x07" "\x07" "\x07")))
 (= ?x2209 "\x07")))
(check-sat)

(get-info :reason-unknown)



