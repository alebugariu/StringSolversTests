(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2679 (str.replace "0" "a" "2")))
 (= ?x2679 "0")))
(check-sat)

(get-info :reason-unknown)



