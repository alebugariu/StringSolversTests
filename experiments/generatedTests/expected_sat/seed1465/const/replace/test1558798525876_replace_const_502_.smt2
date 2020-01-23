(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x378 (str.replace "2" "0" "0")))
 (= ?x378 "2")))
(check-sat)

(get-info :reason-unknown)



