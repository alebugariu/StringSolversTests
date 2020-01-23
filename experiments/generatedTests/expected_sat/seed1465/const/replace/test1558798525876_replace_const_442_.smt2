(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1683 (str.replace "0" "2" "a")))
 (= ?x1683 "0")))
(check-sat)

(get-info :reason-unknown)



