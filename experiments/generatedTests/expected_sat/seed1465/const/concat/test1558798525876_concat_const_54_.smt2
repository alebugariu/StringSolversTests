(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x575 (str.++ "0" "0")))
 (= ?x575 "00")))
(check-sat)

(get-info :reason-unknown)



