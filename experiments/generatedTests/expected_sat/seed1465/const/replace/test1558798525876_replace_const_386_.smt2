(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2394 (str.replace "0" "" "a")))
 (= ?x2394 "a0")))
(check-sat)

(get-info :reason-unknown)



