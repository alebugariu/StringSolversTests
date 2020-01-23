(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1041 (str.replace "-1" "a" "a")))
 (= ?x1041 "-1")))
(check-sat)

(get-info :reason-unknown)



