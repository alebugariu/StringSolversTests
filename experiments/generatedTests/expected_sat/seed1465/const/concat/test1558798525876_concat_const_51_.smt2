(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x554 (str.++ "0" "\x07")))
 (= ?x554 "0\x07")))
(check-sat)

(get-info :reason-unknown)



