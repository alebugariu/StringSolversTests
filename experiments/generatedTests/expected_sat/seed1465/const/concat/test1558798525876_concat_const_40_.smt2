(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x477 (str.++ "-1" "")))
 (= ?x477 "-1")))
(check-sat)

(get-info :reason-unknown)



