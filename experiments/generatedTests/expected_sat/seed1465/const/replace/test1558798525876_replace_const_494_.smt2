(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x464 (str.replace "2" "-1" "0")))
 (= ?x464 "2")))
(check-sat)

(get-info :reason-unknown)



