(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x519 (str.++ "-1" "0")))
 (= ?x519 "-10")))
(check-sat)

(get-info :reason-unknown)



