(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2318 (str.replace "0" "-1" "-1")))
 (= ?x2318 "0")))
(check-sat)

(get-info :reason-unknown)



