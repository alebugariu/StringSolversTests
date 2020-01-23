(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1623 (str.replace "0" "-1" "a")))
 (= ?x1623 "0")))
(check-sat)

(get-info :reason-unknown)



