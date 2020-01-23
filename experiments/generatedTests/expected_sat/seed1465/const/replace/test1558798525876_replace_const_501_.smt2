(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x197 (str.replace "2" "0" "-1")))
 (= ?x197 "2")))
(check-sat)

(get-info :reason-unknown)



