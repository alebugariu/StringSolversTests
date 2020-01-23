(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x429 (str.replace "2" "a" "-1")))
 (= ?x429 "2")))
(check-sat)

(get-info :reason-unknown)



