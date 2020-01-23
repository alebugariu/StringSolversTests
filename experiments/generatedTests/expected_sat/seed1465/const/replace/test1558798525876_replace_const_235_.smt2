(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2298 (str.replace "\x07" "-1" "\x07")))
 (= ?x2298 "\x07")))
(check-sat)

(get-info :reason-unknown)



