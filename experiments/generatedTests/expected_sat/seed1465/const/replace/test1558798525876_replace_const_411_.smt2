(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2249 (str.replace "0" "\x07" "\x07")))
 (= ?x2249 "0")))
(check-sat)

(get-info :reason-unknown)



